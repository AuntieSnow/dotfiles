#!/usr/bin/perl

# obmenu-generator - schema file

=for comment

    item:      add an item inside the menu               {item => ["command", "label", "icon"]},
    cat:       add a category inside the menu             {cat => ["name", "label", "icon"]},
    sep:       horizontal line separator                  {sep => undef}, {sep => "label"},
    pipe:      a pipe menu entry                         {pipe => ["command", "label", "icon"]},
    file:      include the content of an XML file        {file => "/path/to/file.xml"},
    raw:       any XML data supported by Openbox          {raw => q(...)},
    beg:       begin of a category                        {beg => ["name", "icon"]},
    end:       end of a category                          {end => undef},
    obgenmenu: generic menu settings                {obgenmenu => ["label", "icon"]},
    exit:      default "Exit" action                     {exit => ["label", "icon"]},

=cut

# NOTE:
#    * Keys and values are case sensitive. Keep all keys lowercase.
#    * ICON can be a either a direct path to an icon or a valid icon name
#    * Category names are case insensitive. (X-XFCE and x_xfce are equivalent)

require "$ENV{HOME}/.config/obmenu-generator/config.pl";

## Text editor
my $editor = $CONFIG->{editor};

our $SCHEMA = [

    #          COMMAND                 LABEL              ICON
    {item => ['xfce4-terminal',   'Terminal',     'utilities-terminal']},
    {item => ['chromium',         'Web Browser',  'web-browser']},
    {sep => undef},
    {beg => ['Applications', 'applications-engineering']},
		#          NAME            LABEL                ICON
		{cat => ['utility',     'Accessories', 'applications-utilities']},
		{cat => ['development', 'Development', 'applications-development']},
		{cat => ['education',   'Education',   'applications-science']},
		{cat => ['game',        'Games',       'applications-games']},
		{cat => ['graphics',    'Graphics',    'applications-graphics']},
		{cat => ['audiovideo',  'Multimedia',  'applications-multimedia']},
		{cat => ['network',     'Network',     'applications-internet']},
		{cat => ['office',      'Office',      'applications-office']},
		{cat => ['other',       'Other',       'applications-other']},
		{cat => ['settings',    'Settings',    'applications-accessories']},
		{cat => ['system',      'System',      'applications-system']},
	{end => undef},
	
    ## Custom advanced settings
    {sep => undef},
    {beg => ['Advanced Settings', 'applications-engineering']},

      # Openbox category
      {beg => ['Bash']},
		{item => ["$editor ~/.bashrc",    'Edit Bash',          'text-x-generic']},
      {end => undef},
      {beg => ['Openbox', 'openbox']},
       {beg => ['Text Files', 'applications-office']},
         {item => ["$editor ~/.config/openbox/autostart", 'Edit Autostart',   'text-x-generic']},
         {item => ["$editor ~/.config/openbox/rc.xml",    'Edit Hotkeys',          'text-x-generic']},
         {item => ["$editor ~/.config/openbox/menu.xml",  'Edit Menu',        'text-x-generic']},
         {item => ["$editor ~/.config/obmenu-generator/schema.pl",  'Edit D-Menu',        'text-x-generic']},
       {end => undef},
       {beg => ['GUI']},
         {item => ['obkey', 'OBKey']},
         {item => ['obmenu', 'OBMenu']},
       {end => undef},
      {end => undef},
    {end => undef},

    {sep => undef},

    ## This option uses the default Openbox's "Exit" action
    {item => ['openbox --reconfigure', 'Reconfigure', 'openbox']},
    {exit => ['Exit', 'application-exit']},
]
