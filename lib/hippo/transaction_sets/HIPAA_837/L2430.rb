module Hippo::TransactionSets
  module HIPAA_837

    class L2430 < Hippo::TransactionSets::Base
      loop_name 'L2430'    #Line Adjudication Information

      #Line Adjudication Information
      segment Hippo::Segments::SVD,
                :name           => 'Line Adjudication Information',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 5400

      #Line Adjustment
      segment Hippo::Segments::CAS,
                :name           => 'Line Adjustment',
                :minimum        => 0,
                :maximum        => 5,
                :position       => 5450,
                :identified_by => {
                  'CAS01' => ["CO", "CR", "OA", "PI", "PR"]
                }

      #Line Check or Remittance Date
      segment Hippo::Segments::DTP,
                :name           => 'Line Check or Remittance Date',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 5500,
                :identified_by => {
                  'DTP01' => '573',
                  'DTP02' => 'D8'
                }

      #Remaining Patient Liability
      segment Hippo::Segments::AMT,
                :name           => 'Remaining Patient Liability',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 5505,
                :identified_by => {
                  'AMT01' => 'EAF'
                }

    end
  end
end
