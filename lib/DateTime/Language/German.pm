##
## German tables
##

package DateTime::Language::German;

use strict;

use DateTime::Language;
use vars qw(@ISA @DayNames @DayAbbreviations @MonthNames @MonthAbbreviations @AMPM @OrdinalSuffixes %MonthNames %DayNames $VERSION);
@ISA = qw(DateTime::Language);
$VERSION = "1.02";

@MonthNames  = qw(Januar Februar M�rz April Mai Juni
	   Juli August September Oktober November Dezember);
@MonthAbbreviations = qw(Jan Feb M�r Apr Mai Jun Jul Aug Sep Okt Nov Dez);
@DayNames  = qw(Montag Dienstag Mittwoch Donnerstag Freitag Samstag Sonntag);
@DayAbbreviations = map { substr($_,0,3) } @DayNames;

require DateTime::Language::English;
@AMPM =   @{DateTime::Language::English::AMPM};
@OrdinalSuffixes =   @{DateTime::Language::English::OrdinalSuffixes};

@MonthNames{@MonthNames}  = (1 .. scalar(@MonthNames));
@MonthNames{@MonthAbbreviations} = (1 .. scalar(@MonthAbbreviations));
@DayNames{@DayNames}  = (0 .. scalar(@DayNames));
@DayNames{@DayAbbreviations} = (0 .. scalar(@DayAbbreviations));

1;
