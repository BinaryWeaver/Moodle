CREATE DEFINER=`vucozxvwex_1`@`%` PROCEDURE `Update_Course_Sections`(IN `@MainCourseId` INT, IN `@TemplateCourseId` INT, IN `@TargetCourseId` INT)
    MODIFIES SQL DATA
    COMMENT 'Finds mishyperlinked section details'
UPDATE mdl_course_sections
SET summary = REPLACE(
    summary,
    CONCAT('view.php?id=',@p1),
    CONCAT('view.php?id=',@p2)
    )
WHERE course = @p0
