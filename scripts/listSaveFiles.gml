var files = ds_list_create();
var tempfile = file_find_first(working_directory+"\*.pktsav", 0);
while tempfile != "" {
    ds_list_add(files,tempfile);
    tempfile = file_find_next();
}
file_find_close();
return files;
