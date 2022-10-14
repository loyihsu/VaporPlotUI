//
//  View.swift
//
//
//  Created by Loyi Hsu on 2022/8/5.
//

import Plot
import Vapor

public protocol View {
    var content: HTML { get }
}

extension View {
    public func render() -> Response {
        let html = content.render()
        return Response(
            status: .ok,
            headers: ["Content-Type": "text/html"],
            body: Response.Body(string: html)
        )
    }
}
