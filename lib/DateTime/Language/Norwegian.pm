##
## Norwegian tables
##

package DateTime::Language::Norwegian;

use strict;

use DateTime::Language;
use vars qw(@ISA @DayNames @DayAbbreviations @MonthNames @MonthAbbreviations @AMPM @OrdinalSuffixes %MonthNames %DayNames $VERSION);
@ISA = qw(DateTime::Language);


@MonthNames  = qw(Januar Februar Mars April Mai Juni
	   Juli August September Oktober November Desember);
@MonthAbbreviations = qw(Jan Feb Mar Apr Mai Jun Jul Aug Sep Okt Nov Des);
@DayNames  = qw(S�ndag Mandag Tirsdag Onsdag Torsdag Fredag L�rdag S�ndag);
@DayAbbreviations = qw(S�n Man Tir Ons Tor Fre L�r S�n);

require DateTime::Language::English;
@AMPM =   @{DateTime::Language::English::AMPM};
@OrdinalSuffixes =   @{DateTime::Language::English::OrdinalSuffixes};

@MonthNames{@MonthNames}  = (1 .. scalar(@MonthNames));
@MonthNames{@MonthAbbreviations} = (1 .. scalar(@MonthAbbreviations));
@DayNames{@DayNames}  = (0 .. scalar(@DayNames));
@DayNames{@DayAbbreviations} = (0 .. scalar(@DayAbbreviations));

1;
