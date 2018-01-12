module Hippo::TransactionSets
  module HIPAA_276

    class L2200D < Hippo::TransactionSets::Base
      loop_name 'L2200D'    #Claim Status Tracking Number

      #Claim Status Tracking Number
      segment Hippo::Segments::TRN,
                :name           => 'Claim Status Tracking Number',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 900,
                :identified_by => {
                  'TRN01' => '1'
                }

      #Payer Claim Control Number
      segment Hippo::Segments::REF,
                :name           => 'Payer Claim Control Number',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1000,
                :identified_by => {
                  'REF01' => '1K'
                }

      #Institutional Bill Type Identification
      segment Hippo::Segments::REF,
                :name           => 'Institutional Bill Type Identification',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1010,
                :identified_by => {
                  'REF01' => 'BLT'
                }

      #Application or Location System Identifier
      segment Hippo::Segments::REF,
                :name           => 'Application or Location System Identifier',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1030,
                :identified_by => {
                  'REF01' => 'LU'
                }

      #Group Number
      segment Hippo::Segments::REF,
                :name           => 'Group Number',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1035,
                :identified_by => {
                  'REF01' => '6P'
                }

      #Patient Control Number
      segment Hippo::Segments::REF,
                :name           => 'Patient Control Number',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1040,
                :identified_by => {
                  'REF01' => 'EJ'
                }

      #Pharmacy Prescription Number
      segment Hippo::Segments::REF,
                :name           => 'Pharmacy Prescription Number',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1045,
                :identified_by => {
                  'REF01' => 'XZ'
                }

      #Claim Identification Number For Clearinghouses and Other Transmission Intermediaries
      segment Hippo::Segments::REF,
                :name           => 'Claim Identification Number For Clearinghouses and Other Transmission Intermediaries',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1050,
                :identified_by => {
                  'REF01' => 'D9'
                }

      #Claim Submitted Charges
      segment Hippo::Segments::AMT,
                :name           => 'Claim Submitted Charges',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1100,
                :identified_by => {
                  'AMT01' => 'T3'
                }

      #Claim Service Date
      segment Hippo::Segments::DTP,
                :name           => 'Claim Service Date',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1200,
                :identified_by => {
                  'DTP01' => '472',
                  'DTP02' => ["D8", "RD8"]
                }

      #Service Line Information
      loop    Hippo::TransactionSets::HIPAA_276::L2210D,
                :name           => 'Service Line Information',
                :minimum        => 0,
                :maximum        => 99999,
                :position       => 1300

    end
  end
end
