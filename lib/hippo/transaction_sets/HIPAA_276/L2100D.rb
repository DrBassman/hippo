module Hippo::TransactionSets
  module HIPAA_276

    class L2100D < Hippo::TransactionSets::Base
      loop_name 'L2100D'    #Subscriber Name

      #Subscriber Name
      segment Hippo::Segments::NM1,
                :name           => 'Subscriber Name',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 500,
                :identified_by => {
                  'NM101' => 'IL',
                  'NM102' => ["1", "2"],
                  'NM108' => ["24", "II", "MI"]
                }

    end
  end
end
