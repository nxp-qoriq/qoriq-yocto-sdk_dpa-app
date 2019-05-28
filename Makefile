#
 #  Copyright (c) 2011, 2014 Freescale Semiconductor, Inc.
 #
 #  This program is free software; you can redistribute it and/or
 #  modify it under the terms of the GNU General Public License
 #  as published by the Free Software Foundation; either version 2
 #  of the License, or (at your option) any later version.
 #
 #  This program is distributed in the hope that it will be useful,
 #  but WITHOUT ANY WARRANTY; without even the implied warranty of
 #  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 #  GNU General Public License for more details.
 #
 #  You should have received a copy of the GNU General Public License
 #  along with this program; if not, write to the Free Software
 #  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 #
#

#/*
#* Copyright (c) 2014 Freescale Semiconductor, Inc. All rights reserved.
#*/
OBJS = main.o dpa.o testapp.o
TARGET = dpa_app

all:	$(TARGET)

LDFLAGS += -lpthread -lcli
CFLAGS += -DDPAA_DEBUG_ENABLE

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS) $(LDFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) -o $@ -c $<

clean:
	rm *.o
	rm $(TARGET)
