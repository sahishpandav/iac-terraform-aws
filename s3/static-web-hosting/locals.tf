locals {
  # This finds all files within the 'files' subdirectory of the current module
  # and creates a map where the key is the file name and the value is the full path.
  files_to_upload = fileset("${path.module}/files", "**/*.*")
}