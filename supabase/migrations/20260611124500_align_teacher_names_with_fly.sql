begin;

update public.courses
   set default_teacher = case default_teacher
     when 'Fahran Nzamy' then 'Farhan Nzamy'
     when 'Jenna Wade Dunn' then 'Jenna Dunn'
     else default_teacher
   end
 where default_teacher in ('Fahran Nzamy', 'Jenna Wade Dunn');

update public.timetable_slot_courses
   set override_teacher = case override_teacher
     when 'Fahran Nzamy' then 'Farhan Nzamy'
     when 'Jenna Wade Dunn' then 'Jenna Dunn'
     else override_teacher
   end
 where override_teacher in ('Fahran Nzamy', 'Jenna Wade Dunn');

commit;
