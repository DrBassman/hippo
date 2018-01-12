module Hippo::Segments
  class LE < Hippo::Segments::Base

    segment_identifier 'LE'

    field :name                 => 'LoopIdentifierCode',
          :sequence             => 1,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 4,
          :required             => true,
          :data_element_number  => 447

  end
end
