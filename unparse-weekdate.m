#import "ISO8601DateFormatter.h"

int main(int argc, const char **argv) {
	@autoreleasepool {
		ISO8601DateFormatter *formatter = [[ISO8601DateFormatter alloc] init];
		formatter.format = ISO8601DateFormatWeek;
		
		while(--argc) {
			NSString *arg = [NSString stringWithUTF8String:*++argv];
			NSTimeZone *timeZone = nil;
			printf("%s\n", [[NSString stringWithFormat:@"%@:\t%@", arg, [formatter stringFromDate:[formatter dateFromString:arg timeZone:&timeZone] timeZone:timeZone]] UTF8String]);
		}
		
		return 0;
	}
}
