package ONVIF::Media::Types::FindRecordingResultList;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %SearchState_of :ATTR(:get<SearchState>);
my %RecordingInformation_of :ATTR(:get<RecordingInformation>);

__PACKAGE__->_factory(
    [ qw(        SearchState
        RecordingInformation

    ) ],
    {
        'SearchState' => \%SearchState_of,
        'RecordingInformation' => \%RecordingInformation_of,
    },
    {
        'SearchState' => 'ONVIF::Media::Types::SearchState',
        'RecordingInformation' => 'ONVIF::Media::Types::RecordingInformation',
    },
    {

        'SearchState' => 'SearchState',
        'RecordingInformation' => 'RecordingInformation',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Media::Types::FindRecordingResultList

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
FindRecordingResultList from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * SearchState


=item * RecordingInformation




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Media::Types::FindRecordingResultList
   SearchState => $some_value, # SearchState
   RecordingInformation =>  { # ONVIF::Media::Types::RecordingInformation
     RecordingToken => $some_value, # RecordingReference
     Source =>  { # ONVIF::Media::Types::RecordingSourceInformation
       SourceId =>  $some_value, # anyURI
       Name => $some_value, # Name
       Location => $some_value, # Description
       Description => $some_value, # Description
       Address =>  $some_value, # anyURI
     },
     EarliestRecording =>  $some_value, # dateTime
     LatestRecording =>  $some_value, # dateTime
     Content => $some_value, # Description
     Track =>  { # ONVIF::Media::Types::TrackInformation
       TrackToken => $some_value, # TrackReference
       TrackType => $some_value, # TrackType
       Description => $some_value, # Description
       DataFrom =>  $some_value, # dateTime
       DataTo =>  $some_value, # dateTime
     },
     RecordingStatus => $some_value, # RecordingStatus
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

