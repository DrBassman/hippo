module Hippo::TransactionSets
  module HIPAA_276

    class L2000A < Hippo::TransactionSets::Base
      loop_name 'L2000A'    #Information Source Level

      #Information Source Level
      segment Hippo::Segments::HL,
                :name           => 'Information Source Level',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 100,
                :identified_by => {
                  'HL03' => '20',
                  'HL04' => '1'
                }

      #Payer Name
      loop    Hippo::TransactionSets::HIPAA_276::L2100A,
                :name           => 'Payer Name',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 500,
                :identified_by => {
                  'NM1.NM101' => 'PR',
                  'NM1.NM102' => '2',
                  'NM1.NM108' => ["PI", "XV"]
                }

    end
  end
end
