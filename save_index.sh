# Copyright (c) 2020 Roberto Treviño Cervantes

#########################################################################
#                                                                       #
# This file is part of FUTURE (Powered by Monad).                       #
#                                                                       #
# FUTURE is free software: you can redistribute it and/or modify        #
# it under the terms of the GNU General Public License as published by  #
# the Free Software Foundation, either version 3 of the License, or     #
# (at your option) any later version.                                   #
#                                                                       #
# FUTURE is distributed in the hope that it will be useful,             #
# but WITHOUT ANY WARRANTY; without even the implied warranty of        #
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         #
# GNU General Public License for more details.                          #
#                                                                       #
# You should have received a copy of the GNU General Public License     #
# along with FUTURE.  If not, see <https://www.gnu.org/licenses/>.      #
#                                                                       #
#########################################################################

cd $(dirname $0)
ps axf | grep indexer.py | grep -v grep | awk '{print "kill -9 " $1}' | sh
/home/god/anaconda3/bin/python create_annoy_index.py