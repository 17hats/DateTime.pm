##
## Austrian tables
##

package DateTime::Language::Austrian;

use strict;

use DateTime::Language;
use vars qw(@ISA @DayNames @DayAbbreviations @MonthNames @MonthAbbreviations @AMPM @OrdinalSuffixes %MonthNames %DayNames $VERSION);
@ISA = qw(DateTime::Language);


@MonthNames  = qw(J�nner Feber M�rz April Mai Juni
	   Juli August September Oktober November Dezember);
@MonthAbbreviations = qw(J�n Feb M�r Apr Mai Jun Jul Aug Sep Oct Nov Dez);
@DayNames  = qw(Montag Dienstag Mittwoch Donnerstag Freitag Samstag Sonntag);
@DayAbbreviations = map { substr($_,0,3) } @DayNames;

require DateTime::Language::English;
@AMPM = @{DateTime::Language::English::AMPM};
@OrdinalSuffixes = @{DateTime::Language::English::OrdinalSuffixes};

@MonthNames{@MonthNames}  = (1 .. scalar(@MonthNames));
@MonthNames{@MonthAbbreviations} = (1 .. scalar(@MonthAbbreviations));
@DayNames{@DayNames}  = (0 .. scalar(@DayNames));
@DayNames{@DayAbbreviations} = (0 .. scalar(@DayAbbreviations));

1;
