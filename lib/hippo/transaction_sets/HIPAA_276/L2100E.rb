module Hippo::TransactionSets
  module HIPAA_276

    class L2100E < Hippo::TransactionSets::Base
      loop_name 'L2100E'    #Dependent Name

      #Dependent Name
      segment Hippo::Segments::NM1,
                :name           => 'Dependent Name',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 500,
                :identified_by => {
                  'NM101' => 'QC',
                  'NM102' => '1'
                }

    end
  end
end
