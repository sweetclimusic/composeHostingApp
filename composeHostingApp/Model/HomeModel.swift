//
//  HomeModel.swift
//  composeHostingApp
//
//  Created by Ashlee Muscroft on 06/05/2025.
//

import SUIComponents
import SwiftUI

func HomeExamples() -> AnyView {
    
    typealias View = Components.Organisms.MenuPanelRowView
    typealias Model = Components.Organisms.MenuPanelRowView.Model
    
    let voidAction: VoidHandler = {
        print("messages clicked")
    }
    
    let disclosureModel: DisclosureView.Model = .init({
        print("disclosure tapped")
    })
    
    let calendarDisclosureModel : DisclosureView.Model = .init(
        icon: Image(systemName: "calendar" ), {
            print("calendar tapped")
        })
    
    let paye = Model(
        title: "Pay As You Earn (PAYE)",
        body: "Check your tax codes and Income Tax from PAYE sources",
        notificationMode: .hidden,
        disclosureModel: disclosureModel,
        handler: voidAction
    )
    let annualTaxSummary = Model(
        title: "Annual Tax Summary",
        body: "View your tax and National Insurance contributions and find out how the government spends your taxes.",
        notificationMode: .hidden,
        accessibilityHint: "Opens in a web browser.",
        disclosureModel: disclosureModel,
        handler: voidAction
    )
    let messages = Model(
        title: "Messages",
        body: "Messages and letters from HMRC",
        notificationMode: .number(count: 2),
        disclosureModel: disclosureModel,
        handler: voidAction
    )
    let manyMessages = Model(
        title: "An example with a very very long title that spans multiple lines",
        body: "An example with a very very log body that spans multiple lines. This card has 1000 new notifications, but has a max display of 99.",
        notificationMode: .number(count: 1000, max: 99),
        disclosureModel: disclosureModel,
        handler: voidAction
    )
    let noMessages = Model(
        title: "Messages",
        body: "Messages and letters from HMRC",
        notificationMode: .number(count: 0, hideWhenZero: false),
        disclosureModel: disclosureModel,
        handler: voidAction
    )
    let noMessagesHidden = Model(
        title: "Messages",
        body: "Messages and letters from HMRC",
        notificationMode: .number(count: 0),
        disclosureModel: disclosureModel,
        handler: voidAction
    )
    let selfAssessmentNew = Model(
        title: "Self Assessment",
        body: "View and manage your Self Assessment and make payments for what you owe",
        notificationMode: .text("New"),
        disclosureModel: disclosureModel,
        handler: voidAction
    )
    let hts = Model(
        title: "Help to Save account",
        body: "A savings account with bonuses designed to help you start saving",
        notificationMode: .circle,
        disclosureModel: disclosureModel,
        handler: voidAction
    )
    let calendar = Model(
        title: "An example with custom icon",
        body: "An example with custom icon, Add to calendar example",
        notificationMode: .hidden,
        disclosureModel: calendarDisclosureModel,
        handler: voidAction
    )
    
    let models = [paye, annualTaxSummary, messages, manyMessages, noMessages, noMessagesHidden, selfAssessmentNew, hts, calendar]
    
    return AnyView (
        ForEach( models, id: \.id ) { model in
            AnyView(
                Components.Organisms.MenuPanelRowView(model: model)
            )}
    )
}
