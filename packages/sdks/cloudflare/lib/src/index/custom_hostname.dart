import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_hostname_args.dart';
import 'custom_hostname_ownership_verification.dart';
import 'custom_hostname_ownership_verification_http.dart';
import 'custom_hostname_ssl.dart';
import 'custom_hostname_state.dart';

/// Accepted Permissions
///
/// - `SSL and Certificates Read`
/// - `SSL and Certificates Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleCustomHostname = new cloudflare.CustomHostname("example_custom_hostname", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     hostname: "app.example.com",
///     customMetadata: {
///         foo: "string",
///     },
///     customOriginServer: "origin2.example.com",
///     customOriginSni: "sni.example.com",
///     ssl: {
///         bundleMethod: "ubiquitous",
///         certificateAuthority: "google",
///         cloudflareBranding: false,
///         customCertBundles: [{
///             customCertificate: `      -----BEGIN CERTIFICATE-----
///       MIIDdjCCAl6gAwIBAgIJAPnMg0Fs+/B0MA0GCSqGSIb3DQEBCwUAMFsx...
///       -----END CERTIFICATE-----
///
/// `,
///             customKey: `      -----BEGIN PRIVATE KEY-----
///       MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQC/SCB5...
///       -----END PRIVATE KEY-----
///
/// `,
///         }],
///         customCertificate: `    -----BEGIN CERTIFICATE-----
///     MIIFJDCCBAygAwIBAgIQD0ifmj/Yi5NP/2gdUySbfzANBgkqhkiG9w0BAQsFADBN
///     MQswCQYDVQQGEwJVUzEVMBMGA1UEChMMRGlnaUNlcnQgSW5jMScwJQYDVQQDEx5E...SzSHfXp5lnu/3V08I72q1QNzOCgY1XeL4GKVcj4or6cT6tX6oJH7ePPmfrBfqI/O
///     OeH8gMJ+FuwtXYEPa4hBf38M5eU5xWG7
///     -----END CERTIFICATE-----
///
/// `,
///         customCsrId: "7b163417-1d2b-4c84-a38a-2fb7a0cd7752",
///         customKey: `    -----BEGIN RSA PRIVATE KEY-----
///     MIIEowIBAAKCAQEAwQHoetcl9+5ikGzV6cMzWtWPJHqXT3wpbEkRU9Yz7lgvddmG
///     dtcGbg/1CGZu0jJGkMoppoUo4c3dts3iwqRYmBikUP77wwY2QGmDZw2FvkJCJlKn
///     abIRuGvBKwzESIXgKk2016aTP6/dAjEHyo6SeoK8lkIySUvK0fyOVlsiEsCmOpid
///     tnKX/a+50GjB79CJH4ER2lLVZnhePFR/zUOyPxZQQ4naHf7yu/b5jhO0f8fwt+py
///     FxIXjbEIdZliWRkRMtzrHOJIhrmJ2A1J7iOrirbbwillwjjNVUWPf3IJ3M12S9pE
///     ewooaeO2izNTERcG9HzAacbVRn2Y2SWIyT/18QIDAQABAoIBACbhTYXBZYKmYPCb
///     HBR1IBlCQA2nLGf0qRuJNJZg5iEzXows/6tc8YymZkQE7nolapWsQ+upk2y5Xdp/
///     axiuprIs9JzkYK8Ox0r+dlwCG1kSW+UAbX0bQ/qUqlsTvU6muVuMP8vZYHxJ3wmb
///     +ufRBKztPTQ/rYWaYQcgC0RWI20HTFBMxlTAyNxYNWzX7RKFkGVVyB9RsAtmcc8g
///     +j4OdosbfNoJPS0HeIfNpAznDfHKdxDk2Yc1tV6RHBrC1ynyLE9+TaflIAdo2MVv
///     KLMLq51GqYKtgJFIlBRPQqKoyXdz3fGvXrTkf/WY9QNq0J1Vk5ERePZ54mN8iZB7
///     9lwy/AkCgYEA6FXzosxswaJ2wQLeoYc7ceaweX/SwTvxHgXzRyJIIT0eJWgx13Wo
///     /WA3Iziimsjf6qE+SI/8laxPp2A86VMaIt3Z3mJN/CqSVGw8LK2AQst+OwdPyDMu
///     iacE8lj/IFGC8mwNUAb9CzGU3JpU4PxxGFjS/eMtGeRXCWkK4NE+G08CgYEA1Kp9
///     N2JrVlqUz+gAX+LPmE9OEMAS9WQSQsfCHGogIFDGGcNf7+uwBM7GAaSJIP01zcoe
///     VAgWdzXCv3FLhsaZoJ6RyLOLay5phbu1iaTr4UNYm5WtYTzMzqh8l1+MFFDl9xDB
///     vULuCIIrglM5MeS/qnSg1uMoH2oVPj9TVst/ir8CgYEAxrI7Ws9Zc4Bt70N1As+U
///     lySjaEVZCMkqvHJ6TCuVZFfQoE0r0whdLdRLU2PsLFP+q7qaeZQqgBaNSKeVcDYR
///     9B+nY/jOmQoPewPVsp/vQTCnE/R81spu0mp0YI6cIheT1Z9zAy322svcc43JaWB7
///     mEbeqyLOP4Z4qSOcmghZBSECgYACvR9Xs0DGn+wCsW4vze/2ei77MD4OQvepPIFX
///     dFZtlBy5ADcgE9z0cuVB6CiL8DbdK5kwY9pGNr8HUCI03iHkW6Zs+0L0YmihfEVe
///     PG19PSzK9CaDdhD9KFZSbLyVFmWfxOt50H7YRTTiPMgjyFpfi5j2q348yVT0tEQS
///     fhRqaQKBgAcWPokmJ7EbYQGeMbS7HC8eWO/RyamlnSffdCdSc7ue3zdVJxpAkQ8W
///     qu80pEIF6raIQfAf8MXiiZ7auFOSnHQTXUbhCpvDLKi0Mwq3G8Pl07l+2s6dQG6T
///     lv6XTQaMyf6n1yjzL+fzDrH3qXMxHMO/b13EePXpDMpY7HQpoLDi
///     -----END RSA PRIVATE KEY-----
///
/// `,
///         method: "http",
///         settings: {
///             ciphers: [
///                 "ECDHE-RSA-AES128-GCM-SHA256",
///                 "AES128-SHA",
///             ],
///             earlyHints: "on",
///             http2: "on",
///             minTlsVersion: "1.2",
///             tls13: "on",
///         },
///         type: "dv",
///         wildcard: false,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_custom_hostname = cloudflare.CustomHostname("example_custom_hostname",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     hostname="app.example.com",
///     custom_metadata={
///         "foo": "string",
///     },
///     custom_origin_server="origin2.example.com",
///     custom_origin_sni="sni.example.com",
///     ssl={
///         "bundle_method": "ubiquitous",
///         "certificate_authority": "google",
///         "cloudflare_branding": False,
///         "custom_cert_bundles": [{
///             "custom_certificate": """      -----BEGIN CERTIFICATE-----
///       MIIDdjCCAl6gAwIBAgIJAPnMg0Fs+/B0MA0GCSqGSIb3DQEBCwUAMFsx...
///       -----END CERTIFICATE-----
///
/// """,
///             "custom_key": """      -----BEGIN PRIVATE KEY-----
///       MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQC/SCB5...
///       -----END PRIVATE KEY-----
///
/// """,
///         }],
///         "custom_certificate": """    -----BEGIN CERTIFICATE-----
///     MIIFJDCCBAygAwIBAgIQD0ifmj/Yi5NP/2gdUySbfzANBgkqhkiG9w0BAQsFADBN
///     MQswCQYDVQQGEwJVUzEVMBMGA1UEChMMRGlnaUNlcnQgSW5jMScwJQYDVQQDEx5E...SzSHfXp5lnu/3V08I72q1QNzOCgY1XeL4GKVcj4or6cT6tX6oJH7ePPmfrBfqI/O
///     OeH8gMJ+FuwtXYEPa4hBf38M5eU5xWG7
///     -----END CERTIFICATE-----
///
/// """,
///         "custom_csr_id": "7b163417-1d2b-4c84-a38a-2fb7a0cd7752",
///         "custom_key": """    -----BEGIN RSA PRIVATE KEY-----
///     MIIEowIBAAKCAQEAwQHoetcl9+5ikGzV6cMzWtWPJHqXT3wpbEkRU9Yz7lgvddmG
///     dtcGbg/1CGZu0jJGkMoppoUo4c3dts3iwqRYmBikUP77wwY2QGmDZw2FvkJCJlKn
///     abIRuGvBKwzESIXgKk2016aTP6/dAjEHyo6SeoK8lkIySUvK0fyOVlsiEsCmOpid
///     tnKX/a+50GjB79CJH4ER2lLVZnhePFR/zUOyPxZQQ4naHf7yu/b5jhO0f8fwt+py
///     FxIXjbEIdZliWRkRMtzrHOJIhrmJ2A1J7iOrirbbwillwjjNVUWPf3IJ3M12S9pE
///     ewooaeO2izNTERcG9HzAacbVRn2Y2SWIyT/18QIDAQABAoIBACbhTYXBZYKmYPCb
///     HBR1IBlCQA2nLGf0qRuJNJZg5iEzXows/6tc8YymZkQE7nolapWsQ+upk2y5Xdp/
///     axiuprIs9JzkYK8Ox0r+dlwCG1kSW+UAbX0bQ/qUqlsTvU6muVuMP8vZYHxJ3wmb
///     +ufRBKztPTQ/rYWaYQcgC0RWI20HTFBMxlTAyNxYNWzX7RKFkGVVyB9RsAtmcc8g
///     +j4OdosbfNoJPS0HeIfNpAznDfHKdxDk2Yc1tV6RHBrC1ynyLE9+TaflIAdo2MVv
///     KLMLq51GqYKtgJFIlBRPQqKoyXdz3fGvXrTkf/WY9QNq0J1Vk5ERePZ54mN8iZB7
///     9lwy/AkCgYEA6FXzosxswaJ2wQLeoYc7ceaweX/SwTvxHgXzRyJIIT0eJWgx13Wo
///     /WA3Iziimsjf6qE+SI/8laxPp2A86VMaIt3Z3mJN/CqSVGw8LK2AQst+OwdPyDMu
///     iacE8lj/IFGC8mwNUAb9CzGU3JpU4PxxGFjS/eMtGeRXCWkK4NE+G08CgYEA1Kp9
///     N2JrVlqUz+gAX+LPmE9OEMAS9WQSQsfCHGogIFDGGcNf7+uwBM7GAaSJIP01zcoe
///     VAgWdzXCv3FLhsaZoJ6RyLOLay5phbu1iaTr4UNYm5WtYTzMzqh8l1+MFFDl9xDB
///     vULuCIIrglM5MeS/qnSg1uMoH2oVPj9TVst/ir8CgYEAxrI7Ws9Zc4Bt70N1As+U
///     lySjaEVZCMkqvHJ6TCuVZFfQoE0r0whdLdRLU2PsLFP+q7qaeZQqgBaNSKeVcDYR
///     9B+nY/jOmQoPewPVsp/vQTCnE/R81spu0mp0YI6cIheT1Z9zAy322svcc43JaWB7
///     mEbeqyLOP4Z4qSOcmghZBSECgYACvR9Xs0DGn+wCsW4vze/2ei77MD4OQvepPIFX
///     dFZtlBy5ADcgE9z0cuVB6CiL8DbdK5kwY9pGNr8HUCI03iHkW6Zs+0L0YmihfEVe
///     PG19PSzK9CaDdhD9KFZSbLyVFmWfxOt50H7YRTTiPMgjyFpfi5j2q348yVT0tEQS
///     fhRqaQKBgAcWPokmJ7EbYQGeMbS7HC8eWO/RyamlnSffdCdSc7ue3zdVJxpAkQ8W
///     qu80pEIF6raIQfAf8MXiiZ7auFOSnHQTXUbhCpvDLKi0Mwq3G8Pl07l+2s6dQG6T
///     lv6XTQaMyf6n1yjzL+fzDrH3qXMxHMO/b13EePXpDMpY7HQpoLDi
///     -----END RSA PRIVATE KEY-----
///
/// """,
///         "method": "http",
///         "settings": {
///             "ciphers": [
///                 "ECDHE-RSA-AES128-GCM-SHA256",
///                 "AES128-SHA",
///             ],
///             "early_hints": "on",
///             "http2": "on",
///             "min_tls_version": "1.2",
///             "tls13": "on",
///         },
///         "type": "dv",
///         "wildcard": False,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleCustomHostname = new Cloudflare.CustomHostname("example_custom_hostname", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Hostname = "app.example.com",
///         CustomMetadata =
///         {
///             { "foo", "string" },
///         },
///         CustomOriginServer = "origin2.example.com",
///         CustomOriginSni = "sni.example.com",
///         Ssl = new Cloudflare.Inputs.CustomHostnameSslArgs
///         {
///             BundleMethod = "ubiquitous",
///             CertificateAuthority = "google",
///             CloudflareBranding = false,
///             CustomCertBundles = new[]
///             {
///                 new Cloudflare.Inputs.CustomHostnameSslCustomCertBundleArgs
///                 {
///                     CustomCertificate = @"      -----BEGIN CERTIFICATE-----
///       MIIDdjCCAl6gAwIBAgIJAPnMg0Fs+/B0MA0GCSqGSIb3DQEBCwUAMFsx...
///       -----END CERTIFICATE-----
///
/// ",
///                     CustomKey = @"      -----BEGIN PRIVATE KEY-----
///       MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQC/SCB5...
///       -----END PRIVATE KEY-----
///
/// ",
///                 },
///             },
///             CustomCertificate = @"    -----BEGIN CERTIFICATE-----
///     MIIFJDCCBAygAwIBAgIQD0ifmj/Yi5NP/2gdUySbfzANBgkqhkiG9w0BAQsFADBN
///     MQswCQYDVQQGEwJVUzEVMBMGA1UEChMMRGlnaUNlcnQgSW5jMScwJQYDVQQDEx5E...SzSHfXp5lnu/3V08I72q1QNzOCgY1XeL4GKVcj4or6cT6tX6oJH7ePPmfrBfqI/O
///     OeH8gMJ+FuwtXYEPa4hBf38M5eU5xWG7
///     -----END CERTIFICATE-----
///
/// ",
///             CustomCsrId = "7b163417-1d2b-4c84-a38a-2fb7a0cd7752",
///             CustomKey = @"    -----BEGIN RSA PRIVATE KEY-----
///     MIIEowIBAAKCAQEAwQHoetcl9+5ikGzV6cMzWtWPJHqXT3wpbEkRU9Yz7lgvddmG
///     dtcGbg/1CGZu0jJGkMoppoUo4c3dts3iwqRYmBikUP77wwY2QGmDZw2FvkJCJlKn
///     abIRuGvBKwzESIXgKk2016aTP6/dAjEHyo6SeoK8lkIySUvK0fyOVlsiEsCmOpid
///     tnKX/a+50GjB79CJH4ER2lLVZnhePFR/zUOyPxZQQ4naHf7yu/b5jhO0f8fwt+py
///     FxIXjbEIdZliWRkRMtzrHOJIhrmJ2A1J7iOrirbbwillwjjNVUWPf3IJ3M12S9pE
///     ewooaeO2izNTERcG9HzAacbVRn2Y2SWIyT/18QIDAQABAoIBACbhTYXBZYKmYPCb
///     HBR1IBlCQA2nLGf0qRuJNJZg5iEzXows/6tc8YymZkQE7nolapWsQ+upk2y5Xdp/
///     axiuprIs9JzkYK8Ox0r+dlwCG1kSW+UAbX0bQ/qUqlsTvU6muVuMP8vZYHxJ3wmb
///     +ufRBKztPTQ/rYWaYQcgC0RWI20HTFBMxlTAyNxYNWzX7RKFkGVVyB9RsAtmcc8g
///     +j4OdosbfNoJPS0HeIfNpAznDfHKdxDk2Yc1tV6RHBrC1ynyLE9+TaflIAdo2MVv
///     KLMLq51GqYKtgJFIlBRPQqKoyXdz3fGvXrTkf/WY9QNq0J1Vk5ERePZ54mN8iZB7
///     9lwy/AkCgYEA6FXzosxswaJ2wQLeoYc7ceaweX/SwTvxHgXzRyJIIT0eJWgx13Wo
///     /WA3Iziimsjf6qE+SI/8laxPp2A86VMaIt3Z3mJN/CqSVGw8LK2AQst+OwdPyDMu
///     iacE8lj/IFGC8mwNUAb9CzGU3JpU4PxxGFjS/eMtGeRXCWkK4NE+G08CgYEA1Kp9
///     N2JrVlqUz+gAX+LPmE9OEMAS9WQSQsfCHGogIFDGGcNf7+uwBM7GAaSJIP01zcoe
///     VAgWdzXCv3FLhsaZoJ6RyLOLay5phbu1iaTr4UNYm5WtYTzMzqh8l1+MFFDl9xDB
///     vULuCIIrglM5MeS/qnSg1uMoH2oVPj9TVst/ir8CgYEAxrI7Ws9Zc4Bt70N1As+U
///     lySjaEVZCMkqvHJ6TCuVZFfQoE0r0whdLdRLU2PsLFP+q7qaeZQqgBaNSKeVcDYR
///     9B+nY/jOmQoPewPVsp/vQTCnE/R81spu0mp0YI6cIheT1Z9zAy322svcc43JaWB7
///     mEbeqyLOP4Z4qSOcmghZBSECgYACvR9Xs0DGn+wCsW4vze/2ei77MD4OQvepPIFX
///     dFZtlBy5ADcgE9z0cuVB6CiL8DbdK5kwY9pGNr8HUCI03iHkW6Zs+0L0YmihfEVe
///     PG19PSzK9CaDdhD9KFZSbLyVFmWfxOt50H7YRTTiPMgjyFpfi5j2q348yVT0tEQS
///     fhRqaQKBgAcWPokmJ7EbYQGeMbS7HC8eWO/RyamlnSffdCdSc7ue3zdVJxpAkQ8W
///     qu80pEIF6raIQfAf8MXiiZ7auFOSnHQTXUbhCpvDLKi0Mwq3G8Pl07l+2s6dQG6T
///     lv6XTQaMyf6n1yjzL+fzDrH3qXMxHMO/b13EePXpDMpY7HQpoLDi
///     -----END RSA PRIVATE KEY-----
///
/// ",
///             Method = "http",
///             Settings = new Cloudflare.Inputs.CustomHostnameSslSettingsArgs
///             {
///                 Ciphers = new[]
///                 {
///                     "ECDHE-RSA-AES128-GCM-SHA256",
///                     "AES128-SHA",
///                 },
///                 EarlyHints = "on",
///                 Http2 = "on",
///                 MinTlsVersion = "1.2",
///                 Tls13 = "on",
///             },
///             Type = "dv",
///             Wildcard = false,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewCustomHostname(ctx, "example_custom_hostname", &cloudflare.CustomHostnameArgs{
/// 			ZoneId:   pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Hostname: pulumi.String("app.example.com"),
/// 			CustomMetadata: pulumi.StringMap{
/// 				"foo": pulumi.String("string"),
/// 			},
/// 			CustomOriginServer: pulumi.String("origin2.example.com"),
/// 			CustomOriginSni:    pulumi.String("sni.example.com"),
/// 			Ssl: &cloudflare.CustomHostnameSslArgs{
/// 				BundleMethod:         pulumi.String("ubiquitous"),
/// 				CertificateAuthority: pulumi.String("google"),
/// 				CloudflareBranding:   pulumi.Bool(false),
/// 				CustomCertBundles: cloudflare.CustomHostnameSslCustomCertBundleArray{
/// 					&cloudflare.CustomHostnameSslCustomCertBundleArgs{
/// 						CustomCertificate: pulumi.String("      -----BEGIN CERTIFICATE-----\n      MIIDdjCCAl6gAwIBAgIJAPnMg0Fs+/B0MA0GCSqGSIb3DQEBCwUAMFsx...\n      -----END CERTIFICATE-----\n\n"),
/// 						CustomKey:         pulumi.String("      -----BEGIN PRIVATE KEY-----\n      MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQC/SCB5...\n      -----END PRIVATE KEY-----\n\n"),
/// 					},
/// 				},
/// 				CustomCertificate: pulumi.String(`    -----BEGIN CERTIFICATE-----
///     MIIFJDCCBAygAwIBAgIQD0ifmj/Yi5NP/2gdUySbfzANBgkqhkiG9w0BAQsFADBN
///     MQswCQYDVQQGEwJVUzEVMBMGA1UEChMMRGlnaUNlcnQgSW5jMScwJQYDVQQDEx5E...SzSHfXp5lnu/3V08I72q1QNzOCgY1XeL4GKVcj4or6cT6tX6oJH7ePPmfrBfqI/O
///     OeH8gMJ+FuwtXYEPa4hBf38M5eU5xWG7
///     -----END CERTIFICATE-----
///
/// `),
/// 				CustomCsrId: pulumi.String("7b163417-1d2b-4c84-a38a-2fb7a0cd7752"),
/// 				CustomKey: pulumi.String(`    -----BEGIN RSA PRIVATE KEY-----
///     MIIEowIBAAKCAQEAwQHoetcl9+5ikGzV6cMzWtWPJHqXT3wpbEkRU9Yz7lgvddmG
///     dtcGbg/1CGZu0jJGkMoppoUo4c3dts3iwqRYmBikUP77wwY2QGmDZw2FvkJCJlKn
///     abIRuGvBKwzESIXgKk2016aTP6/dAjEHyo6SeoK8lkIySUvK0fyOVlsiEsCmOpid
///     tnKX/a+50GjB79CJH4ER2lLVZnhePFR/zUOyPxZQQ4naHf7yu/b5jhO0f8fwt+py
///     FxIXjbEIdZliWRkRMtzrHOJIhrmJ2A1J7iOrirbbwillwjjNVUWPf3IJ3M12S9pE
///     ewooaeO2izNTERcG9HzAacbVRn2Y2SWIyT/18QIDAQABAoIBACbhTYXBZYKmYPCb
///     HBR1IBlCQA2nLGf0qRuJNJZg5iEzXows/6tc8YymZkQE7nolapWsQ+upk2y5Xdp/
///     axiuprIs9JzkYK8Ox0r+dlwCG1kSW+UAbX0bQ/qUqlsTvU6muVuMP8vZYHxJ3wmb
///     +ufRBKztPTQ/rYWaYQcgC0RWI20HTFBMxlTAyNxYNWzX7RKFkGVVyB9RsAtmcc8g
///     +j4OdosbfNoJPS0HeIfNpAznDfHKdxDk2Yc1tV6RHBrC1ynyLE9+TaflIAdo2MVv
///     KLMLq51GqYKtgJFIlBRPQqKoyXdz3fGvXrTkf/WY9QNq0J1Vk5ERePZ54mN8iZB7
///     9lwy/AkCgYEA6FXzosxswaJ2wQLeoYc7ceaweX/SwTvxHgXzRyJIIT0eJWgx13Wo
///     /WA3Iziimsjf6qE+SI/8laxPp2A86VMaIt3Z3mJN/CqSVGw8LK2AQst+OwdPyDMu
///     iacE8lj/IFGC8mwNUAb9CzGU3JpU4PxxGFjS/eMtGeRXCWkK4NE+G08CgYEA1Kp9
///     N2JrVlqUz+gAX+LPmE9OEMAS9WQSQsfCHGogIFDGGcNf7+uwBM7GAaSJIP01zcoe
///     VAgWdzXCv3FLhsaZoJ6RyLOLay5phbu1iaTr4UNYm5WtYTzMzqh8l1+MFFDl9xDB
///     vULuCIIrglM5MeS/qnSg1uMoH2oVPj9TVst/ir8CgYEAxrI7Ws9Zc4Bt70N1As+U
///     lySjaEVZCMkqvHJ6TCuVZFfQoE0r0whdLdRLU2PsLFP+q7qaeZQqgBaNSKeVcDYR
///     9B+nY/jOmQoPewPVsp/vQTCnE/R81spu0mp0YI6cIheT1Z9zAy322svcc43JaWB7
///     mEbeqyLOP4Z4qSOcmghZBSECgYACvR9Xs0DGn+wCsW4vze/2ei77MD4OQvepPIFX
///     dFZtlBy5ADcgE9z0cuVB6CiL8DbdK5kwY9pGNr8HUCI03iHkW6Zs+0L0YmihfEVe
///     PG19PSzK9CaDdhD9KFZSbLyVFmWfxOt50H7YRTTiPMgjyFpfi5j2q348yVT0tEQS
///     fhRqaQKBgAcWPokmJ7EbYQGeMbS7HC8eWO/RyamlnSffdCdSc7ue3zdVJxpAkQ8W
///     qu80pEIF6raIQfAf8MXiiZ7auFOSnHQTXUbhCpvDLKi0Mwq3G8Pl07l+2s6dQG6T
///     lv6XTQaMyf6n1yjzL+fzDrH3qXMxHMO/b13EePXpDMpY7HQpoLDi
///     -----END RSA PRIVATE KEY-----
///
/// `),
/// 				Method: pulumi.String("http"),
/// 				Settings: &cloudflare.CustomHostnameSslSettingsArgs{
/// 					Ciphers: pulumi.StringArray{
/// 						pulumi.String("ECDHE-RSA-AES128-GCM-SHA256"),
/// 						pulumi.String("AES128-SHA"),
/// 					},
/// 					EarlyHints:    pulumi.String("on"),
/// 					Http2:         pulumi.String("on"),
/// 					MinTlsVersion: pulumi.String("1.2"),
/// 					Tls13:         pulumi.String("on"),
/// 				},
/// 				Type:     pulumi.String("dv"),
/// 				Wildcard: pulumi.Bool(false),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_customhostname" "example_custom_hostname" {
///   zone_id  = "023e105f4ecef8ad9ca31a8372d0c353"
///   hostname = "app.example.com"
///   custom_metadata = {
///     "foo" = "string"
///   }
///   custom_origin_server = "origin2.example.com"
///   custom_origin_sni    = "sni.example.com"
///   ssl = {
///     bundle_method         = "ubiquitous"
///     certificate_authority = "google"
///     cloudflare_branding   = false
///     custom_cert_bundles = [{
///       "customCertificate" = "      -----BEGIN CERTIFICATE-----\n      MIIDdjCCAl6gAwIBAgIJAPnMg0Fs+/B0MA0GCSqGSIb3DQEBCwUAMFsx...\n      -----END CERTIFICATE-----\n\n"
///       "customKey"         = "      -----BEGIN PRIVATE KEY-----\n      MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQC/SCB5...\n      -----END PRIVATE KEY-----\n\n"
///     }]
///     custom_certificate = "    -----BEGIN CERTIFICATE-----\n    MIIFJDCCBAygAwIBAgIQD0ifmj/Yi5NP/2gdUySbfzANBgkqhkiG9w0BAQsFADBN\n    MQswCQYDVQQGEwJVUzEVMBMGA1UEChMMRGlnaUNlcnQgSW5jMScwJQYDVQQDEx5E...SzSHfXp5lnu/3V08I72q1QNzOCgY1XeL4GKVcj4or6cT6tX6oJH7ePPmfrBfqI/O\n    OeH8gMJ+FuwtXYEPa4hBf38M5eU5xWG7\n    -----END CERTIFICATE-----\n\n"
///     custom_csr_id      = "7b163417-1d2b-4c84-a38a-2fb7a0cd7752"
///     custom_key         = "    -----BEGIN RSA PRIVATE KEY-----\n    MIIEowIBAAKCAQEAwQHoetcl9+5ikGzV6cMzWtWPJHqXT3wpbEkRU9Yz7lgvddmG\n    dtcGbg/1CGZu0jJGkMoppoUo4c3dts3iwqRYmBikUP77wwY2QGmDZw2FvkJCJlKn\n    abIRuGvBKwzESIXgKk2016aTP6/dAjEHyo6SeoK8lkIySUvK0fyOVlsiEsCmOpid\n    tnKX/a+50GjB79CJH4ER2lLVZnhePFR/zUOyPxZQQ4naHf7yu/b5jhO0f8fwt+py\n    FxIXjbEIdZliWRkRMtzrHOJIhrmJ2A1J7iOrirbbwillwjjNVUWPf3IJ3M12S9pE\n    ewooaeO2izNTERcG9HzAacbVRn2Y2SWIyT/18QIDAQABAoIBACbhTYXBZYKmYPCb\n    HBR1IBlCQA2nLGf0qRuJNJZg5iEzXows/6tc8YymZkQE7nolapWsQ+upk2y5Xdp/\n    axiuprIs9JzkYK8Ox0r+dlwCG1kSW+UAbX0bQ/qUqlsTvU6muVuMP8vZYHxJ3wmb\n    +ufRBKztPTQ/rYWaYQcgC0RWI20HTFBMxlTAyNxYNWzX7RKFkGVVyB9RsAtmcc8g\n    +j4OdosbfNoJPS0HeIfNpAznDfHKdxDk2Yc1tV6RHBrC1ynyLE9+TaflIAdo2MVv\n    KLMLq51GqYKtgJFIlBRPQqKoyXdz3fGvXrTkf/WY9QNq0J1Vk5ERePZ54mN8iZB7\n    9lwy/AkCgYEA6FXzosxswaJ2wQLeoYc7ceaweX/SwTvxHgXzRyJIIT0eJWgx13Wo\n    /WA3Iziimsjf6qE+SI/8laxPp2A86VMaIt3Z3mJN/CqSVGw8LK2AQst+OwdPyDMu\n    iacE8lj/IFGC8mwNUAb9CzGU3JpU4PxxGFjS/eMtGeRXCWkK4NE+G08CgYEA1Kp9\n    N2JrVlqUz+gAX+LPmE9OEMAS9WQSQsfCHGogIFDGGcNf7+uwBM7GAaSJIP01zcoe\n    VAgWdzXCv3FLhsaZoJ6RyLOLay5phbu1iaTr4UNYm5WtYTzMzqh8l1+MFFDl9xDB\n    vULuCIIrglM5MeS/qnSg1uMoH2oVPj9TVst/ir8CgYEAxrI7Ws9Zc4Bt70N1As+U\n    lySjaEVZCMkqvHJ6TCuVZFfQoE0r0whdLdRLU2PsLFP+q7qaeZQqgBaNSKeVcDYR\n    9B+nY/jOmQoPewPVsp/vQTCnE/R81spu0mp0YI6cIheT1Z9zAy322svcc43JaWB7\n    mEbeqyLOP4Z4qSOcmghZBSECgYACvR9Xs0DGn+wCsW4vze/2ei77MD4OQvepPIFX\n    dFZtlBy5ADcgE9z0cuVB6CiL8DbdK5kwY9pGNr8HUCI03iHkW6Zs+0L0YmihfEVe\n    PG19PSzK9CaDdhD9KFZSbLyVFmWfxOt50H7YRTTiPMgjyFpfi5j2q348yVT0tEQS\n    fhRqaQKBgAcWPokmJ7EbYQGeMbS7HC8eWO/RyamlnSffdCdSc7ue3zdVJxpAkQ8W\n    qu80pEIF6raIQfAf8MXiiZ7auFOSnHQTXUbhCpvDLKi0Mwq3G8Pl07l+2s6dQG6T\n    lv6XTQaMyf6n1yjzL+fzDrH3qXMxHMO/b13EePXpDMpY7HQpoLDi\n    -----END RSA PRIVATE KEY-----\n\n"
///     method             = "http"
///     settings = {
///       ciphers         = ["ECDHE-RSA-AES128-GCM-SHA256", "AES128-SHA"]
///       early_hints     = "on"
///       http2           = "on"
///       min_tls_version = "1.2"
///       tls13           = "on"
///     }
///     type     = "dv"
///     wildcard = false
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.CustomHostname;
/// import com.pulumi.cloudflare.CustomHostnameArgs;
/// import com.pulumi.cloudflare.inputs.CustomHostnameSslArgs;
/// import com.pulumi.cloudflare.inputs.CustomHostnameSslCustomCertBundleArgs;
/// import com.pulumi.cloudflare.inputs.CustomHostnameSslSettingsArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var exampleCustomHostname = new CustomHostname("exampleCustomHostname", CustomHostnameArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .hostname("app.example.com")
///             .customMetadata(Map.of("foo", "string"))
///             .customOriginServer("origin2.example.com")
///             .customOriginSni("sni.example.com")
///             .ssl(CustomHostnameSslArgs.builder()
///                 .bundleMethod("ubiquitous")
///                 .certificateAuthority("google")
///                 .cloudflareBranding(false)
///                 .customCertBundles(CustomHostnameSslCustomCertBundleArgs.builder()
///                     .customCertificate("""
///       -----BEGIN CERTIFICATE-----
///       MIIDdjCCAl6gAwIBAgIJAPnMg0Fs+/B0MA0GCSqGSIb3DQEBCwUAMFsx...
///       -----END CERTIFICATE-----
///
///                     """)
///                     .customKey("""
///       -----BEGIN PRIVATE KEY-----
///       MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQC/SCB5...
///       -----END PRIVATE KEY-----
///
///                     """)
///                     .build())
///                 .customCertificate("""
///     -----BEGIN CERTIFICATE-----
///     MIIFJDCCBAygAwIBAgIQD0ifmj/Yi5NP/2gdUySbfzANBgkqhkiG9w0BAQsFADBN
///     MQswCQYDVQQGEwJVUzEVMBMGA1UEChMMRGlnaUNlcnQgSW5jMScwJQYDVQQDEx5E...SzSHfXp5lnu/3V08I72q1QNzOCgY1XeL4GKVcj4or6cT6tX6oJH7ePPmfrBfqI/O
///     OeH8gMJ+FuwtXYEPa4hBf38M5eU5xWG7
///     -----END CERTIFICATE-----
///
///                 """)
///                 .customCsrId("7b163417-1d2b-4c84-a38a-2fb7a0cd7752")
///                 .customKey("""
///     -----BEGIN RSA PRIVATE KEY-----
///     MIIEowIBAAKCAQEAwQHoetcl9+5ikGzV6cMzWtWPJHqXT3wpbEkRU9Yz7lgvddmG
///     dtcGbg/1CGZu0jJGkMoppoUo4c3dts3iwqRYmBikUP77wwY2QGmDZw2FvkJCJlKn
///     abIRuGvBKwzESIXgKk2016aTP6/dAjEHyo6SeoK8lkIySUvK0fyOVlsiEsCmOpid
///     tnKX/a+50GjB79CJH4ER2lLVZnhePFR/zUOyPxZQQ4naHf7yu/b5jhO0f8fwt+py
///     FxIXjbEIdZliWRkRMtzrHOJIhrmJ2A1J7iOrirbbwillwjjNVUWPf3IJ3M12S9pE
///     ewooaeO2izNTERcG9HzAacbVRn2Y2SWIyT/18QIDAQABAoIBACbhTYXBZYKmYPCb
///     HBR1IBlCQA2nLGf0qRuJNJZg5iEzXows/6tc8YymZkQE7nolapWsQ+upk2y5Xdp/
///     axiuprIs9JzkYK8Ox0r+dlwCG1kSW+UAbX0bQ/qUqlsTvU6muVuMP8vZYHxJ3wmb
///     +ufRBKztPTQ/rYWaYQcgC0RWI20HTFBMxlTAyNxYNWzX7RKFkGVVyB9RsAtmcc8g
///     +j4OdosbfNoJPS0HeIfNpAznDfHKdxDk2Yc1tV6RHBrC1ynyLE9+TaflIAdo2MVv
///     KLMLq51GqYKtgJFIlBRPQqKoyXdz3fGvXrTkf/WY9QNq0J1Vk5ERePZ54mN8iZB7
///     9lwy/AkCgYEA6FXzosxswaJ2wQLeoYc7ceaweX/SwTvxHgXzRyJIIT0eJWgx13Wo
///     /WA3Iziimsjf6qE+SI/8laxPp2A86VMaIt3Z3mJN/CqSVGw8LK2AQst+OwdPyDMu
///     iacE8lj/IFGC8mwNUAb9CzGU3JpU4PxxGFjS/eMtGeRXCWkK4NE+G08CgYEA1Kp9
///     N2JrVlqUz+gAX+LPmE9OEMAS9WQSQsfCHGogIFDGGcNf7+uwBM7GAaSJIP01zcoe
///     VAgWdzXCv3FLhsaZoJ6RyLOLay5phbu1iaTr4UNYm5WtYTzMzqh8l1+MFFDl9xDB
///     vULuCIIrglM5MeS/qnSg1uMoH2oVPj9TVst/ir8CgYEAxrI7Ws9Zc4Bt70N1As+U
///     lySjaEVZCMkqvHJ6TCuVZFfQoE0r0whdLdRLU2PsLFP+q7qaeZQqgBaNSKeVcDYR
///     9B+nY/jOmQoPewPVsp/vQTCnE/R81spu0mp0YI6cIheT1Z9zAy322svcc43JaWB7
///     mEbeqyLOP4Z4qSOcmghZBSECgYACvR9Xs0DGn+wCsW4vze/2ei77MD4OQvepPIFX
///     dFZtlBy5ADcgE9z0cuVB6CiL8DbdK5kwY9pGNr8HUCI03iHkW6Zs+0L0YmihfEVe
///     PG19PSzK9CaDdhD9KFZSbLyVFmWfxOt50H7YRTTiPMgjyFpfi5j2q348yVT0tEQS
///     fhRqaQKBgAcWPokmJ7EbYQGeMbS7HC8eWO/RyamlnSffdCdSc7ue3zdVJxpAkQ8W
///     qu80pEIF6raIQfAf8MXiiZ7auFOSnHQTXUbhCpvDLKi0Mwq3G8Pl07l+2s6dQG6T
///     lv6XTQaMyf6n1yjzL+fzDrH3qXMxHMO/b13EePXpDMpY7HQpoLDi
///     -----END RSA PRIVATE KEY-----
///
///                 """)
///                 .method("http")
///                 .settings(CustomHostnameSslSettingsArgs.builder()
///                     .ciphers(
///                         "ECDHE-RSA-AES128-GCM-SHA256",
///                         "AES128-SHA")
///                     .earlyHints("on")
///                     .http2("on")
///                     .minTlsVersion("1.2")
///                     .tls13("on")
///                     .build())
///                 .type("dv")
///                 .wildcard(false)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleCustomHostname:
///     type: cloudflare:CustomHostname
///     name: example_custom_hostname
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       hostname: app.example.com
///       customMetadata:
///         foo: string
///       customOriginServer: origin2.example.com
///       customOriginSni: sni.example.com
///       ssl:
///         bundleMethod: ubiquitous
///         certificateAuthority: google
///         cloudflareBranding: false
///         customCertBundles:
///           - customCertificate: |2+
///                     -----BEGIN CERTIFICATE-----
///                     MIIDdjCCAl6gAwIBAgIJAPnMg0Fs+/B0MA0GCSqGSIb3DQEBCwUAMFsx...
///                     -----END CERTIFICATE-----
///
///             customKey: |2+
///                     -----BEGIN PRIVATE KEY-----
///                     MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQC/SCB5...
///                     -----END PRIVATE KEY-----
///
///         customCertificate: |2+
///               -----BEGIN CERTIFICATE-----
///               MIIFJDCCBAygAwIBAgIQD0ifmj/Yi5NP/2gdUySbfzANBgkqhkiG9w0BAQsFADBN
///               MQswCQYDVQQGEwJVUzEVMBMGA1UEChMMRGlnaUNlcnQgSW5jMScwJQYDVQQDEx5E...SzSHfXp5lnu/3V08I72q1QNzOCgY1XeL4GKVcj4or6cT6tX6oJH7ePPmfrBfqI/O
///               OeH8gMJ+FuwtXYEPa4hBf38M5eU5xWG7
///               -----END CERTIFICATE-----
///
///         customCsrId: 7b163417-1d2b-4c84-a38a-2fb7a0cd7752
///         customKey: |2+
///               -----BEGIN RSA PRIVATE KEY-----
///               MIIEowIBAAKCAQEAwQHoetcl9+5ikGzV6cMzWtWPJHqXT3wpbEkRU9Yz7lgvddmG
///               dtcGbg/1CGZu0jJGkMoppoUo4c3dts3iwqRYmBikUP77wwY2QGmDZw2FvkJCJlKn
///               abIRuGvBKwzESIXgKk2016aTP6/dAjEHyo6SeoK8lkIySUvK0fyOVlsiEsCmOpid
///               tnKX/a+50GjB79CJH4ER2lLVZnhePFR/zUOyPxZQQ4naHf7yu/b5jhO0f8fwt+py
///               FxIXjbEIdZliWRkRMtzrHOJIhrmJ2A1J7iOrirbbwillwjjNVUWPf3IJ3M12S9pE
///               ewooaeO2izNTERcG9HzAacbVRn2Y2SWIyT/18QIDAQABAoIBACbhTYXBZYKmYPCb
///               HBR1IBlCQA2nLGf0qRuJNJZg5iEzXows/6tc8YymZkQE7nolapWsQ+upk2y5Xdp/
///               axiuprIs9JzkYK8Ox0r+dlwCG1kSW+UAbX0bQ/qUqlsTvU6muVuMP8vZYHxJ3wmb
///               +ufRBKztPTQ/rYWaYQcgC0RWI20HTFBMxlTAyNxYNWzX7RKFkGVVyB9RsAtmcc8g
///               +j4OdosbfNoJPS0HeIfNpAznDfHKdxDk2Yc1tV6RHBrC1ynyLE9+TaflIAdo2MVv
///               KLMLq51GqYKtgJFIlBRPQqKoyXdz3fGvXrTkf/WY9QNq0J1Vk5ERePZ54mN8iZB7
///               9lwy/AkCgYEA6FXzosxswaJ2wQLeoYc7ceaweX/SwTvxHgXzRyJIIT0eJWgx13Wo
///               /WA3Iziimsjf6qE+SI/8laxPp2A86VMaIt3Z3mJN/CqSVGw8LK2AQst+OwdPyDMu
///               iacE8lj/IFGC8mwNUAb9CzGU3JpU4PxxGFjS/eMtGeRXCWkK4NE+G08CgYEA1Kp9
///               N2JrVlqUz+gAX+LPmE9OEMAS9WQSQsfCHGogIFDGGcNf7+uwBM7GAaSJIP01zcoe
///               VAgWdzXCv3FLhsaZoJ6RyLOLay5phbu1iaTr4UNYm5WtYTzMzqh8l1+MFFDl9xDB
///               vULuCIIrglM5MeS/qnSg1uMoH2oVPj9TVst/ir8CgYEAxrI7Ws9Zc4Bt70N1As+U
///               lySjaEVZCMkqvHJ6TCuVZFfQoE0r0whdLdRLU2PsLFP+q7qaeZQqgBaNSKeVcDYR
///               9B+nY/jOmQoPewPVsp/vQTCnE/R81spu0mp0YI6cIheT1Z9zAy322svcc43JaWB7
///               mEbeqyLOP4Z4qSOcmghZBSECgYACvR9Xs0DGn+wCsW4vze/2ei77MD4OQvepPIFX
///               dFZtlBy5ADcgE9z0cuVB6CiL8DbdK5kwY9pGNr8HUCI03iHkW6Zs+0L0YmihfEVe
///               PG19PSzK9CaDdhD9KFZSbLyVFmWfxOt50H7YRTTiPMgjyFpfi5j2q348yVT0tEQS
///               fhRqaQKBgAcWPokmJ7EbYQGeMbS7HC8eWO/RyamlnSffdCdSc7ue3zdVJxpAkQ8W
///               qu80pEIF6raIQfAf8MXiiZ7auFOSnHQTXUbhCpvDLKi0Mwq3G8Pl07l+2s6dQG6T
///               lv6XTQaMyf6n1yjzL+fzDrH3qXMxHMO/b13EePXpDMpY7HQpoLDi
///               -----END RSA PRIVATE KEY-----
///
///         method: http
///         settings:
///           ciphers:
///             - ECDHE-RSA-AES128-GCM-SHA256
///             - AES128-SHA
///           earlyHints: on
///           http2: on
///           minTlsVersion: '1.2'
///           tls13: on
///         type: dv
///         wildcard: false
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/customHostname:CustomHostname example '<zone_id>/<custom_hostname_id>'
/// ```
class CustomHostname extends pulumi.CustomResource {
  /// This is the time the hostname was created.
  late final pulumi.Output<String> createdAt;
  /// Unique key/value metadata for this hostname. These are per-hostname (customer) settings.
  late final pulumi.Output<Map<String, String>?> customMetadata;
  /// a valid hostname that’s been added to your DNS zone as an A, AAAA, or CNAME record.
  late final pulumi.Output<String?> customOriginServer;
  /// A hostname that will be sent to your custom origin server as SNI for TLS handshake. This can be a valid subdomain of the zone or custom origin server name or the string ':request*host*header:' which will cause the host header in the request to be used as SNI. Not configurable with default/fallback origin server.
  late final pulumi.Output<String?> customOriginSni;
  /// The custom hostname that will point to your hostname via CNAME.
  late final pulumi.Output<String> hostname;
  /// This is a record which can be placed to activate a hostname.
  late final pulumi.Output<CustomHostnameOwnershipVerification> ownershipVerification;
  /// This presents the token to be served by the given http url to activate a hostname.
  late final pulumi.Output<CustomHostnameOwnershipVerificationHttp> ownershipVerificationHttp;
  /// SSL properties used when creating the custom hostname.
  late final pulumi.Output<CustomHostnameSsl?> ssl;
  /// Status of the hostname's activation.
  /// Available values: "active", "pending", "active*redeploying", "moved", "pending*deletion", "deleted", "pending*blocked", "pending*migration", "pending*provisioned", "test*pending", "test*active", "test*active*apex", "test*blocked", "testFailed", "provisioned", "blocked".
  late final pulumi.Output<String> status;
  /// These are errors that were encountered while trying to activate a hostname.
  late final pulumi.Output<List<String>> verificationErrors;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [CustomHostname].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomHostname]. {@macro pulumi_index_custom_hostname_custom_hostname_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomHostname(
    String name, {
    CustomHostnameArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/customHostname:CustomHostname',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    createdAt = registerOutput<String>('createdAt');
    customMetadata = registerOutput<Map<String, String>?>('customMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    customOriginServer = registerOutput<String?>('customOriginServer');
    customOriginSni = registerOutput<String?>('customOriginSni');
    hostname = registerOutput<String>('hostname');
    ownershipVerification = registerOutput<CustomHostnameOwnershipVerification>('ownershipVerification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomHostnameOwnershipVerification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ownershipVerificationHttp = registerOutput<CustomHostnameOwnershipVerificationHttp>('ownershipVerificationHttp', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomHostnameOwnershipVerificationHttp.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ssl = registerOutput<CustomHostnameSsl?>('ssl', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomHostnameSsl.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    verificationErrors = registerOutput<List<String>>('verificationErrors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [CustomHostname] resource's state with the given [name] and [id].
  static CustomHostname get(
    String name,
    pulumi.Input<String> id, {
    CustomHostnameState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CustomHostname._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CustomHostname._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/customHostname:CustomHostname',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    customMetadata = registerOutput<Map<String, String>?>('customMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    customOriginServer = registerOutput<String?>('customOriginServer');
    customOriginSni = registerOutput<String?>('customOriginSni');
    hostname = registerOutput<String>('hostname');
    ownershipVerification = registerOutput<CustomHostnameOwnershipVerification>('ownershipVerification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomHostnameOwnershipVerification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ownershipVerificationHttp = registerOutput<CustomHostnameOwnershipVerificationHttp>('ownershipVerificationHttp', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomHostnameOwnershipVerificationHttp.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ssl = registerOutput<CustomHostnameSsl?>('ssl', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomHostnameSsl.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    verificationErrors = registerOutput<List<String>>('verificationErrors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [CustomHostname] resource.
  CustomHostname.reference(String urn)
    : super(
        'cloudflare:index/customHostname:CustomHostname',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createdAt = registerOutput<String>('createdAt');
    customMetadata = registerOutput<Map<String, String>?>('customMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    customOriginServer = registerOutput<String?>('customOriginServer');
    customOriginSni = registerOutput<String?>('customOriginSni');
    hostname = registerOutput<String>('hostname');
    ownershipVerification = registerOutput<CustomHostnameOwnershipVerification>('ownershipVerification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomHostnameOwnershipVerification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ownershipVerificationHttp = registerOutput<CustomHostnameOwnershipVerificationHttp>('ownershipVerificationHttp', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomHostnameOwnershipVerificationHttp.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ssl = registerOutput<CustomHostnameSsl?>('ssl', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomHostnameSsl.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    verificationErrors = registerOutput<List<String>>('verificationErrors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    zoneId = registerOutput<String>('zoneId');
  }
}
