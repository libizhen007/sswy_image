package me.sswy.test;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Test1 {

	public static void main(String[] args) {
		 Pattern p = Pattern.compile("/(.{1,10})/(.{1,10})/$|/(.{1,10})/(.{1,10})/(\\d+)$");
		 Matcher m = p.matcher("/gc/lg/3");
		 boolean b = m.matches();
		 System.out.println(m.group(3));
	}
}
