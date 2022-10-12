//
// VerificationPageStaticContentConsentPage.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
@_spi(STP) import StripeCore

extension StripeAPI { 

    struct VerificationPageStaticContentConsentPage: Decodable, Equatable {
        let acceptButtonText: String
        let body: String
        let declineButtonText: String
        let privacyPolicy: String
        let timeEstimate: String
        let title: String
        let scrollToContinueButtonText: String
    }

}
