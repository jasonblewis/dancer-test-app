package MyApp;
use Dancer2;

use MyApp::MajorFeature;

our $VERSION = '0.1';

get '/' => sub {
    template 'index';
};

# get '/mf' => sub {
#   template 'mf';
#   # Lots of Perl code to return the top-level MajorFeature view
# };
# 

get  '/mf' => \&MyApp::MajorFeature::mf;


true;
