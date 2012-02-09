FIND_PATH(EXT2FS_INCLUDE_DIR ext2fs.h /usr/include/ext2fs
    /usr/local/include/ext2fs)

FIND_LIBRARY(EXT2FS_LIBRARY NAMES ext2fs PATH /usr/lib /usr/local/lib) 

IF (EXT2FS_INCLUDE_DIR AND EXT2FS_LIBRARY)
   SET(EXT2FS_FOUND TRUE)
ENDIF (EXT2FS_INCLUDE_DIR AND EXT2FS_LIBRARY)


IF (EXT2FS_FOUND)
   IF (NOT ext2fs_FIND_QUIETLY)
      MESSAGE(STATUS "Found ext2fs: ${EXT2FS_LIBRARY}")
   ENDIF (NOT ext2fs_FIND_QUIETLY)
ELSE (EXT2FS_FOUND)
   IF (ext2fs_FIND_REQUIRED)
      MESSAGE(FATAL_ERROR "Could not find ext2fs")
   ENDIF (ext2fs_FIND_REQUIRED)
ENDIF (EXT2FS_FOUND)
