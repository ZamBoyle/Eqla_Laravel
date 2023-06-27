php -r "
echo '______________________________________________________________'.PHP_EOL;
\$ok = true;
register_shutdown_function(function() use (&\$ok) {
  unlink('composer-setup.php');
  unlink('composer-setup.php.sha');
  echo '______________________________________________________________'.PHP_EOL;
  if (! \$ok){
    exit(1);
  }
});
echo '- Téléchargement de l\'installeur'.PHP_EOL;
copy('https://getcomposer.org/installer', 'composer-setup.php');
echo '- Téléchargement de la signature pour le checksum'.PHP_EOL;
copy('https://composer.github.io/installer.sig','composer-setup.php.sha');
\$hash = trim(file_get_contents('composer-setup.php.sha'));
if (hash_file('sha384', 'composer-setup.php') === \$hash) { 
    echo '- Checksum de l\'installeur est OK'.PHP_EOL;
    echo '- Exécution de l\'installeur composer-setup.php'.PHP_EOL;
    include 'composer-setup.php';
} else { 
    echo '- L\'installeur est corrompu'.PHP_EOL;
    \$ok = false;
}
" && echo 'sudo mv composer.phar /usr/local/bin/composer' | tee /dev/tty | bash