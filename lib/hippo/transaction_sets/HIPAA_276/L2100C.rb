module Hippo::TransactionSets
  module HIPAA_276

    class L2100C < Hippo::TransactionSets::Base
      loop_name 'L2100C'    #Provider Name

      #Provider Name
      segment Hippo::Segments::NM1,
                :name           => 'Provider Name',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 500,
                :identified_by => {
                  'NM101' => '1P',
                  'NM102' => ["1", "2"],
                  'NM108' => ["FI", "SV", "XX"]
                }

    end
  end
end
