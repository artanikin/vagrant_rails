# Установка необходимых компонентов
1. Установить VirtualBox `https://www.virtualbox.org/wiki/Downloads`
2. Установить Vagrant `https://www.vagrantup.com/downloads.html`
3. Установить плагин к Vagrant из репозитория `https://github.com/dotless-de/vagrant-vbguest` командой `vagrant plugin install vagrant-vbguest`

# Развертывание виртуальной машины

1. `git clone git@gitfo2.naumen.ru:root/virtual_cp.git`
2. Перейти в папку с проектом
3. `vagrant up && notify-send --icon=$PWD/vagrant.svg 'Vagrant up complete'`
4. Создать папку `files` (`mkdir files`)
5. В папке `files` разместить файлы проекта
11. Заходим на гостевую машину `vagrant ssh`
12. С гостевой машины - переходим в проект (`/vagrant/files/проект`)
13. Стартуем приложение `rails server -b 0.0.0.0`

# Настройки для подключения к БД

Host: localhost
Port: 15432
Initial Database: postgres
User Name: postgres
Password: 123

# Команды для rbenv

* `rbenv versions` - список установленных версий ruby
* `rbenv version` - отображает активную версию ruby
* `rbenv install -l` - список всех доступных версий ruby
* `rbenv install 2.4.0` - установка ruby
* `rbenv uninstall 2.4.0` - удаление ruby
* `rbenv local 2.4.0` - подключение версии ruby в обход global версии ruby
* `rbenv local --unset` - отключение локальной версии ruby
* `rbenv global 2.4.0` - установка версии ruby в качестве основной версии
