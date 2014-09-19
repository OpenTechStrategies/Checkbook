-- Reference Tables
--TRUNCATE ref_address_type  CASCADE ;
DELETE FROM ref_address_type  ;
--TRUNCATE ref_agency CASCADE ;
--TRUNCATE ref_agency_history CASCADE ;
DELETE FROM ref_agency WHERE agency_id < 9000;
DELETE FROM ref_agency_history WHERE agency_id < 9000;
TRUNCATE ref_agreement_type CASCADE ;
TRUNCATE ref_amount_basis CASCADE ;
TRUNCATE ref_award_category CASCADE ;
TRUNCATE ref_award_category_industry CASCADE ;
TRUNCATE ref_award_method CASCADE ;
TRUNCATE ref_award_size CASCADE ;
TRUNCATE ref_budget_code CASCADE ;
TRUNCATE ref_business_type CASCADE ;
TRUNCATE ref_business_type_status CASCADE ;
DELETE FROM ref_date;

--TRUNCATE ref_date CASCADE ;
--TRUNCATE ref_department CASCADE ;
--TRUNCATE ref_department_history CASCADE ;
DELETE FROM ref_department WHERE department_id < 900000;
DELETE FROM ref_department_history WHERE department_id < 900000;
TRUNCATE ref_document_code CASCADE ;
TRUNCATE ref_expenditure_cancel_reason CASCADE ;
TRUNCATE ref_expenditure_cancel_type CASCADE ;
TRUNCATE ref_expenditure_object CASCADE ;
TRUNCATE ref_expenditure_object_history CASCADE ;
TRUNCATE ref_expenditure_privacy_type CASCADE ;
TRUNCATE ref_expenditure_status CASCADE ;
TRUNCATE ref_fiscal_period CASCADE ;
--TRUNCATE ref_fund_class CASCADE ;
DELETE FROM ref_fund_class ;
TRUNCATE ref_funding_class CASCADE ;
TRUNCATE ref_funding_source CASCADE ;
TRUNCATE ref_industry_type CASCADE ;
TRUNCATE ref_location CASCADE ;
TRUNCATE ref_location_history CASCADE ;
TRUNCATE ref_minority_type CASCADE ;
TRUNCATE ref_miscellaneous_vendor CASCADE ;
DELETE FROM ref_month;
--TRUNCATE ref_month CASCADE ;
TRUNCATE ref_object_class CASCADE ;
TRUNCATE ref_object_class_history CASCADE ;
TRUNCATE ref_pay_frequency CASCADE ;
TRUNCATE ref_revenue_category CASCADE ;
TRUNCATE ref_revenue_class CASCADE ;
TRUNCATE ref_revenue_source CASCADE ;
TRUNCATE ref_spending_category CASCADE ;
DELETE FROM ref_year;
--TRUNCATE ref_year  CASCADE ;
-- Transaction tables
TRUNCATE disbursement_edc CASCADE ;
TRUNCATE disbursement_line_item_edc CASCADE ;
TRUNCATE disbursement_line_item_details_edc CASCADE ;
TRUNCATE history_agreement_edc CASCADE ;
TRUNCATE history_agreement_accounting_line_edc CASCADE ;
TRUNCATE history_master_agreement_edc CASCADE ;
TRUNCATE agreement_snapshot_edc CASCADE ;
TRUNCATE agreement_snapshot_cy_edc CASCADE ;
TRUNCATE agreement_snapshot_expanded_edc CASCADE ;
TRUNCATE agreement_snapshot_expanded_cy_edc CASCADE ;
TRUNCATE vendor_edc CASCADE ;
TRUNCATE vendor_history_edc CASCADE ;
TRUNCATE vendor_address_edc  CASCADE ;
TRUNCATE vendor_business_type_edc  CASCADE ;
TRUNCATE address_edc CASCADE ;
TRUNCATE fmsv_business_type CASCADE ;
TRUNCATE pending_contracts_edc CASCADE;