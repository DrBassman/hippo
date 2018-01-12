module Hippo::TransactionSets
  module HIPAA_277

    class L2100C < Hippo::TransactionSets::Base
      loop_name 'L2100C'    #Billing Provider Name

      #Billing Provider Name
      segment Hippo::Segments::NM1,
                :name           => 'Billing Provider Name',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 500,
                :identified_by => {
                  'NM101' => '85',
                  'NM102' => ["1", "2"],
                  'NM108' => ["FI", "XX"]
                }

    end
  end
end
