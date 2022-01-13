//
//  Configuration.swift
//  BaboaiDomainsResolution
//
//  Created by Johnny Good on 2/16/21.
//  Copyright © 2021 Baboai Domains. All rights reserved.
//

import Foundation

public struct NamingServiceConfig {
    let network: String
    let providerUrl: String
    let networking: NetworkingLayer
    let proxyReader: String?
    let registryAddresses: [String]?

    public init(
        providerUrl: String,
        network: String = "",
        networking: NetworkingLayer = DefaultNetworkingLayer(),
        proxyReader: String? = nil,
        registryAddresses: [String]? = nil
    ) {
        self.network = network
        self.providerUrl = providerUrl
        self.networking = networking
        self.proxyReader = proxyReader
        self.registryAddresses = registryAddresses
    }
}

public struct UnsLocations {
    let layer1: NamingServiceConfig
    let layer2: NamingServiceConfig

    public init(
        layer1: NamingServiceConfig,
        layer2: NamingServiceConfig
    ) {
        self.layer1 = layer1
        self.layer2 = layer2
    }
}

public struct Configurations {
    let uns: UnsLocations
    let zns: NamingServiceConfig

    public init(
        uns: UnsLocations = UnsLocations(
            layer1: NamingServiceConfig(
                providerUrl: "https://mainnet.infura.io/v3/3c25f57353234b1b853e9861050f4817",
                network: "mainnet"),
            layer2: NamingServiceConfig(
                providerUrl: "https://polygon-mainnet.infura.io/v3/3c25f57353234b1b853e9861050f4817",
                network: "polygon-mainnet")
        ),
        zns: NamingServiceConfig = NamingServiceConfig(
            providerUrl: "https://api.zilliqa.com",
            network: "mainnet")
    ) {
        self.uns = uns
        self.zns = zns
    }
}
