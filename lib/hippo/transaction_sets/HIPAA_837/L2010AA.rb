module Hippo::TransactionSets
  module HIPAA_837

    class L2010AA < Hippo::TransactionSets::Base
      loop_name 'L2010AA'    #Billing Provider Name

      #Billing Provider Name
      segment Hippo::Segments::NM1,
                :name           => 'Billing Provider Name',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 150,
                :identified_by => {
                  'NM101' => '85',
                  'NM102' => ["1", "2"]
                }

      #Billing Provider Address
      segment Hippo::Segments::N3,
                :name           => 'Billing Provider Address',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 250

      #Billing Provider City, State, ZIP Code
      segment Hippo::Segments::N4,
                :name           => 'Billing Provider City, State, ZIP Code',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 300

      #Billing Provider Tax Identification
      segment Hippo::Segments::REF,
                :name           => 'Billing Provider Tax Identification',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 350,
                :identified_by => {
                  'REF01' => ["EI", "SY"]
                }

      #Billing Provider UPIN/License Information
      segment Hippo::Segments::REF,
                :name           => 'Billing Provider UPIN/License Information',
                :minimum        => 0,
                :maximum        => 2,
                :position       => 360,
                :identified_by => {
                  'REF01' => ["0B", "1G"]
                }

      #Billing Provider Contact Information
      segment Hippo::Segments::PER,
                :name           => 'Billing Provider Contact Information',
                :minimum        => 0,
                :maximum        => 2,
                :position       => 400,
                :identified_by => {
                  'PER01' => 'IC',
                  'PER03' => ["EM", "FX", "TE"]
                }

    end
  end
end
