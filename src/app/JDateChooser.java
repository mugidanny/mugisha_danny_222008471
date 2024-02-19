package app;

import java.awt.Font;
import java.util.Date;

public interface JDateChooser {

	void setCalendar(Object object);

	void setFont(Font font);

	void setDateFormatString(String string);

	void setMaxSelectableDate(Date time);

	void setMinSelectableDate(Date noPastDates);

}
