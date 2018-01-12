module Hippo::Segments
  class HSD < Hippo::Segments::Base

    segment_identifier 'HSD'

    field :name                 => 'QuantityQualifier',
          :sequence             => 1,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 673

    field :name                 => 'Quantity',
          :sequence             => 2,
          :datatype             => :decimal,
          :minimum              => 1,
          :maximum              => 15,
          :required             => false,
          :data_element_number  => 380

    field :name                 => 'UnitOrBasisForMeasurementCode',
          :sequence             => 3,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 355

    field :name                 => 'SampleSelectionModulus',
          :sequence             => 4,
          :datatype             => :decimal,
          :minimum              => 1,
          :maximum              => 6,
          :required             => false,
          :data_element_number  => 1167

    field :name                 => 'TimePeriodQualifier',
          :sequence             => 5,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 615

    field :name                 => 'NumberOfPeriods',
          :sequence             => 6,
          :datatype             => :integer,
          :minimum              => 1,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 616

    field :name                 => 'ShipDeliveryOrCalendarPatternCode',
          :sequence             => 7,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 678

    field :name                 => 'ShipDeliveryPatternTimeCode',
          :sequence             => 8,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 679

  end
end
