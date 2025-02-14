// Copyright (c) 2019 Alexander Medvednikov. All rights reserved.
// Use of this source code is governed by an MIT license
// that can be found in the LICENSE file.

module time

//#flag -framework CoreServices
//#include <CoreServices/CoreServices.h>
//#include <mach/mach_time.h>

// in ms
pub fn ticks() f64 {
	panic('not implemented') 
/* 
	t := i64(C.mach_absolute_time())
	# Nanoseconds elapsedNano = AbsoluteToNanoseconds( *(AbsoluteTime *) &t );
	# return (double)(* (uint64_t *) &elapsedNano) / 1000000;
*/ 
	return f64(0)
}

pub fn sleep(seconds int) {
	C.sleep(seconds)
}

pub fn usleep(seconds int) {
	C.usleep(seconds)
}

pub fn sleep_ms(seconds int) {
	C.usleep(seconds * 1000)
}

