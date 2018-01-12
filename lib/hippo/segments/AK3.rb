module Hippo::Segments
  class AK3 < Hippo::Segments::Base

    segment_identifier 'AK3'

    field :name                 => 'SegmentIdCode',
          :sequence             => 1,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => true,
          :data_element_number  => 721

    field :name                 => 'SegmentPositionInTransactionSet',
          :sequence             => 2,
          :datatype             => :integer,
          :minimum              => 1,
          :maximum              => 10,
          :required             => true,
          :data_element_number  => 719

    field :name                 => 'LoopIdentifierCode',
          :sequence             => 3,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 4,
          :required             => false,
          :data_element_number  => 447

    field :name                 => 'SegmentSyntaxErrorCode',
          :sequence             => 4,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 720

  end
end
