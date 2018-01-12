module Hippo::TransactionSets
  module HIPAA_837

    class L2310B < Hippo::TransactionSets::Base
      loop_name 'L2310B'    #Rendering Provider Name

      #Rendering Provider Name
      segment Hippo::Segments::NM1,
                :name           => 'Rendering Provider Name',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 2500,
                :identified_by => {
                  'NM101' => '82',
                  'NM102' => ["1", "2"]
                }

      #Rendering Provider Specialty Information
      segment Hippo::Segments::PRV,
                :name           => 'Rendering Provider Specialty Information',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 2550,
                :identified_by => {
                  'PRV01' => 'PE',
                  'PRV02' => 'PXC'
                }

      #Rendering Provider Secondary Identification
      segment Hippo::Segments::REF,
                :name           => 'Rendering Provider Secondary Identification',
                :minimum        => 0,
                :maximum        => 4,
                :position       => 2710,
                :identified_by => {
                  'REF01' => ["0B", "1G", "G2", "LU"]
                }

    end
  end
end
