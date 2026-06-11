begin;

update public.courses
   set default_teacher = 'Rajesh Choyikkunimmal'
 where name in (
   'Advanced Math D (CIE)',
   'Further Math',
   'Further Maths'
 );

update public.timetable_slot_courses as slot_course
   set override_teacher = 'Rajesh Choyikkunimmal'
  from public.courses as course
 where course.id = slot_course.course_id
   and course.name in (
     'Advanced Math D (CIE)',
     'Further Math',
     'Further Maths'
   )
   and coalesce(slot_course.override_teacher, '') in ('', 'Rajesh', 'Rajesh Choyikkunimmal');

commit;
