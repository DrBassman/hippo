module Hippo::TransactionSets
  module HIPAA_837

    class L2330B < Hippo::TransactionSets::Base
      loop_name 'L2330B'    #Other Payer Name

      #Other Payer Name
      segment Hippo::Segments::NM1,
                :name           => 'Other Payer Name',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 3250,
                :identified_by => {
                  'NM101' => 'PR',
                  'NM102' => '2',
                  'NM108' => ["PI", "XV"]
                }

      #Other Payer Address
      segment Hippo::Segments::N3,
                :name           => 'Other Payer Address',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 3320

      #Other Payer City, State, ZIP Code
      segment Hippo::Segments::N4,
                :name           => 'Other Payer City, State, ZIP Code',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 3400

      #Claim Check or Remittance Date
      segment Hippo::Segments::DTP,
                :name           => 'Claim Check or Remittance Date',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 3470,
                :identified_by => {
                  'DTP01' => '573',
                  'DTP02' => 'D8'
                }

      #Other Payer Secondary Identifier
      segment Hippo::Segments::REF,
                :name           => 'Other Payer Secondary Identifier',
                :minimum        => 0,
                :maximum        => 2,
                :position       => 3550,
                :identified_by => {
                  'REF01' => ["2U", "EI", "FY", "NF"]
                }

      #Other Payer Prior Authorization Number
      segment Hippo::Segments::REF,
                :name           => 'Other Payer Prior Authorization Number',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 3560,
                :identified_by => {
                  'REF01' => 'G1'
                }

      #Other Payer Referral Number
      segment Hippo::Segments::REF,
                :name           => 'Other Payer Referral Number',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 3563,
                :identified_by => {
                  'REF01' => '9F'
                }

      #Other Payer Claim Adjustment Indicator
      segment Hippo::Segments::REF,
                :name           => 'Other Payer Claim Adjustment Indicator',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 3570,
                :identified_by => {
                  'REF01' => 'T4'
                }

      #Other Payer Claim Control Number
      segment Hippo::Segments::REF,
                :name           => 'Other Payer Claim Control Number',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 3575,
                :identified_by => {
                  'REF01' => 'F8'
                }

    end
  end
end
