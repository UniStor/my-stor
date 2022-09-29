# my config paths
in=~/.uni/my/stor/lvm\ thin\ pool
defaults=$in/defaults
vars=$in/vars

my_config_exists(){
  # test
  if test -f "$defaults/main"; then
    exist=True
  elif test -f "$vars/main"; then
    exist=True
  else
    exist=False
  fi
  export config_exist=$exist
}

make_new_config(){
  my_config_exists

  if [! $config_exist]; then
    mkdir -p $vars $defaults
    # cp ansible/defaults/my.example/vars/main $vars
    # cp ansible/defaults/my.example/defaults/main $defaults

    echo "Created a thin pool configuration for you"
  fi
}


link_or_import_my(){
  echo $config_exist
}

make_new_config
link_or_import_my
