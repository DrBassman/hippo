module Hippo::Segments
  class AK1 < Hippo::Segments::Base

    segment_identifier 'AK1'

    field :name                 => 'FunctionalIdentifierCode',
          :sequence             => 1,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => true,
          :data_element_number  => 479

    field :name                 => 'GroupControlNumber',
          :sequence             => 2,
          :datatype             => :integer,
          :minimum              => 1,
          :maximum              => 9,
          :required             => true,
          :data_element_number  => 28

    field :name                 => 'VersionReleaseIndustryIdentifierCode',
          :sequence             => 3,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 12,
          :required             => false,
          :data_element_number  => 480

  end
end
