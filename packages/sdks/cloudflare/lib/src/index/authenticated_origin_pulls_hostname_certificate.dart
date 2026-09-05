import 'package:pulumi/pulumi.dart' as pulumi;
import 'authenticated_origin_pulls_hostname_certificate_args.dart';
import 'authenticated_origin_pulls_hostname_certificate_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleAuthenticatedOriginPullsHostnameCertificate = new cloudflare.AuthenticatedOriginPullsHostnameCertificate("example_authenticated_origin_pulls_hostname_certificate", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     certificate: `  -----BEGIN CERTIFICATE-----
///   MIIDtTCCAp2gAwIBAgIJAMHAwfXZ5/PWMA0GCSqGSIb3DQEBCwUAMEUxCzAJBgNV
///   BAYTAkFVMRMwEQYDVQQIEwpTb21lLVN0YXRlMSEwHwYDVQQKExhJbnRlcm5ldCBX
///   aWRnaXRzIFB0eSBMdGQwHhcNMTYwODI0MTY0MzAxWhcNMTYxMTIyMTY0MzAxWjBF
///   MQswCQYDVQQGEwJBVTETMBEGA1UECBMKU29tZS1TdGF0ZTEhMB8GA1UEChMYSW50
///   ZXJuZXQgV2lkZ2l0cyBQdHkgTHRkMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIB
///   CgKCAQEAwQHoetcl9+5ikGzV6cMzWtWPJHqXT3wpbEkRU9Yz7lgvddmGdtcGbg/1
///   CGZu0jJGkMoppoUo4c3dts3iwqRYmBikUP77wwY2QGmDZw2FvkJCJlKnabIRuGvB
///   KwzESIXgKk2016aTP6/dAjEHyo6SeoK8lkIySUvK0fyOVlsiEsCmOpidtnKX/a+5
///   0GjB79CJH4ER2lLVZnhePFR/zUOyPxZQQ4naHf7yu/b5jhO0f8fwt+pyFxIXjbEI
///   dZliWRkRMtzrHOJIhrmJ2A1J7iOrirbbwillwjjNVUWPf3IJ3M12S9pEewooaeO2
///   izNTERcG9HzAacbVRn2Y2SWIyT/18QIDAQABo4GnMIGkMB0GA1UdDgQWBBT/LbE4
///   9rWf288N6sJA5BRb6FJIGDB1BgNVHSMEbjBsgBT/LbE49rWf288N6sJA5BRb6FJI
///   GKFJpEcwRTELMAkGA1UEBhMCQVUxEzARBgNVBAgTClNvbWUtU3RhdGUxITAfBgNV
///   BAoTGEludGVybmV0IFdpZGdpdHMgUHR5IEx0ZIIJAMHAwfXZ5/PWMAwGA1UdEwQF
///   MAMBAf8wDQYJKoZIhvcNAQELBQADggEBAHHFwl0tH0quUYZYO0dZYt4R7SJ0pCm2
///   2satiyzHl4OnXcHDpekAo7/a09c6Lz6AU83cKy/+x3/djYHXWba7HpEu0dR3ugQP
///   Mlr4zrhd9xKZ0KZKiYmtJH+ak4OM4L3FbT0owUZPyjLSlhMtJVcoRp5CJsjAMBUG
///   SvD8RX+T01wzox/Qb+lnnNnOlaWpqu8eoOenybxKp1a9ULzIVvN/LAcc+14vioFq
///   2swRWtmocBAs8QR9n4uvbpiYvS8eYueDCWMM4fvFfBhaDZ3N9IbtySh3SpFdQDhw
///   YbjM2rxXiyLGxB4Bol7QTv4zHif7Zt89FReT/NBy4rzaskDJY5L6xmY=
///   -----END CERTIFICATE-----
///
/// `,
///     privateKey: `  -----BEGIN RSA PRIVATE KEY-----
///   MIIEowIBAAKCAQEAwQHoetcl9+5ikGzV6cMzWtWPJHqXT3wpbEkRU9Yz7lgvddmG
///   dtcGbg/1CGZu0jJGkMoppoUo4c3dts3iwqRYmBikUP77wwY2QGmDZw2FvkJCJlKn
///   abIRuGvBKwzESIXgKk2016aTP6/dAjEHyo6SeoK8lkIySUvK0fyOVlsiEsCmOpid
///   tnKX/a+50GjB79CJH4ER2lLVZnhePFR/zUOyPxZQQ4naHf7yu/b5jhO0f8fwt+py
///   FxIXjbEIdZliWRkRMtzrHOJIhrmJ2A1J7iOrirbbwillwjjNVUWPf3IJ3M12S9pE
///   ewooaeO2izNTERcG9HzAacbVRn2Y2SWIyT/18QIDAQABAoIBACbhTYXBZYKmYPCb
///   HBR1IBlCQA2nLGf0qRuJNJZg5iEzXows/6tc8YymZkQE7nolapWsQ+upk2y5Xdp/
///   axiuprIs9JzkYK8Ox0r+dlwCG1kSW+UAbX0bQ/qUqlsTvU6muVuMP8vZYHxJ3wmb
///   +ufRBKztPTQ/rYWaYQcgC0RWI20HTFBMxlTAyNxYNWzX7RKFkGVVyB9RsAtmcc8g
///   +j4OdosbfNoJPS0HeIfNpAznDfHKdxDk2Yc1tV6RHBrC1ynyLE9+TaflIAdo2MVv
///   KLMLq51GqYKtgJFIlBRPQqKoyXdz3fGvXrTkf/WY9QNq0J1Vk5ERePZ54mN8iZB7
///   9lwy/AkCgYEA6FXzosxswaJ2wQLeoYc7ceaweX/SwTvxHgXzRyJIIT0eJWgx13Wo
///   /WA3Iziimsjf6qE+SI/8laxPp2A86VMaIt3Z3mJN/CqSVGw8LK2AQst+OwdPyDMu
///   iacE8lj/IFGC8mwNUAb9CzGU3JpU4PxxGFjS/eMtGeRXCWkK4NE+G08CgYEA1Kp9
///   N2JrVlqUz+gAX+LPmE9OEMAS9WQSQsfCHGogIFDGGcNf7+uwBM7GAaSJIP01zcoe
///   VAgWdzXCv3FLhsaZoJ6RyLOLay5phbu1iaTr4UNYm5WtYTzMzqh8l1+MFFDl9xDB
///   vULuCIIrglM5MeS/qnSg1uMoH2oVPj9TVst/ir8CgYEAxrI7Ws9Zc4Bt70N1As+U
///   lySjaEVZCMkqvHJ6TCuVZFfQoE0r0whdLdRLU2PsLFP+q7qaeZQqgBaNSKeVcDYR
///   9B+nY/jOmQoPewPVsp/vQTCnE/R81spu0mp0YI6cIheT1Z9zAy322svcc43JaWB7
///   mEbeqyLOP4Z4qSOcmghZBSECgYACvR9Xs0DGn+wCsW4vze/2ei77MD4OQvepPIFX
///   dFZtlBy5ADcgE9z0cuVB6CiL8DbdK5kwY9pGNr8HUCI03iHkW6Zs+0L0YmihfEVe
///   PG19PSzK9CaDdhD9KFZSbLyVFmWfxOt50H7YRTTiPMgjyFpfi5j2q348yVT0tEQS
///   fhRqaQKBgAcWPokmJ7EbYQGeMbS7HC8eWO/RyamlnSffdCdSc7ue3zdVJxpAkQ8W
///   qu80pEIF6raIQfAf8MXiiZ7auFOSnHQTXUbhCpvDLKi0Mwq3G8Pl07l+2s6dQG6T
///   lv6XTQaMyf6n1yjzL+fzDrH3qXMxHMO/b13EePXpDMpY7HQpoLDi
///   -----END RSA PRIVATE KEY-----
///
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_authenticated_origin_pulls_hostname_certificate = cloudflare.AuthenticatedOriginPullsHostnameCertificate("example_authenticated_origin_pulls_hostname_certificate",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     certificate="""  -----BEGIN CERTIFICATE-----
///   MIIDtTCCAp2gAwIBAgIJAMHAwfXZ5/PWMA0GCSqGSIb3DQEBCwUAMEUxCzAJBgNV
///   BAYTAkFVMRMwEQYDVQQIEwpTb21lLVN0YXRlMSEwHwYDVQQKExhJbnRlcm5ldCBX
///   aWRnaXRzIFB0eSBMdGQwHhcNMTYwODI0MTY0MzAxWhcNMTYxMTIyMTY0MzAxWjBF
///   MQswCQYDVQQGEwJBVTETMBEGA1UECBMKU29tZS1TdGF0ZTEhMB8GA1UEChMYSW50
///   ZXJuZXQgV2lkZ2l0cyBQdHkgTHRkMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIB
///   CgKCAQEAwQHoetcl9+5ikGzV6cMzWtWPJHqXT3wpbEkRU9Yz7lgvddmGdtcGbg/1
///   CGZu0jJGkMoppoUo4c3dts3iwqRYmBikUP77wwY2QGmDZw2FvkJCJlKnabIRuGvB
///   KwzESIXgKk2016aTP6/dAjEHyo6SeoK8lkIySUvK0fyOVlsiEsCmOpidtnKX/a+5
///   0GjB79CJH4ER2lLVZnhePFR/zUOyPxZQQ4naHf7yu/b5jhO0f8fwt+pyFxIXjbEI
///   dZliWRkRMtzrHOJIhrmJ2A1J7iOrirbbwillwjjNVUWPf3IJ3M12S9pEewooaeO2
///   izNTERcG9HzAacbVRn2Y2SWIyT/18QIDAQABo4GnMIGkMB0GA1UdDgQWBBT/LbE4
///   9rWf288N6sJA5BRb6FJIGDB1BgNVHSMEbjBsgBT/LbE49rWf288N6sJA5BRb6FJI
///   GKFJpEcwRTELMAkGA1UEBhMCQVUxEzARBgNVBAgTClNvbWUtU3RhdGUxITAfBgNV
///   BAoTGEludGVybmV0IFdpZGdpdHMgUHR5IEx0ZIIJAMHAwfXZ5/PWMAwGA1UdEwQF
///   MAMBAf8wDQYJKoZIhvcNAQELBQADggEBAHHFwl0tH0quUYZYO0dZYt4R7SJ0pCm2
///   2satiyzHl4OnXcHDpekAo7/a09c6Lz6AU83cKy/+x3/djYHXWba7HpEu0dR3ugQP
///   Mlr4zrhd9xKZ0KZKiYmtJH+ak4OM4L3FbT0owUZPyjLSlhMtJVcoRp5CJsjAMBUG
///   SvD8RX+T01wzox/Qb+lnnNnOlaWpqu8eoOenybxKp1a9ULzIVvN/LAcc+14vioFq
///   2swRWtmocBAs8QR9n4uvbpiYvS8eYueDCWMM4fvFfBhaDZ3N9IbtySh3SpFdQDhw
///   YbjM2rxXiyLGxB4Bol7QTv4zHif7Zt89FReT/NBy4rzaskDJY5L6xmY=
///   -----END CERTIFICATE-----
///
/// """,
///     private_key="""  -----BEGIN RSA PRIVATE KEY-----
///   MIIEowIBAAKCAQEAwQHoetcl9+5ikGzV6cMzWtWPJHqXT3wpbEkRU9Yz7lgvddmG
///   dtcGbg/1CGZu0jJGkMoppoUo4c3dts3iwqRYmBikUP77wwY2QGmDZw2FvkJCJlKn
///   abIRuGvBKwzESIXgKk2016aTP6/dAjEHyo6SeoK8lkIySUvK0fyOVlsiEsCmOpid
///   tnKX/a+50GjB79CJH4ER2lLVZnhePFR/zUOyPxZQQ4naHf7yu/b5jhO0f8fwt+py
///   FxIXjbEIdZliWRkRMtzrHOJIhrmJ2A1J7iOrirbbwillwjjNVUWPf3IJ3M12S9pE
///   ewooaeO2izNTERcG9HzAacbVRn2Y2SWIyT/18QIDAQABAoIBACbhTYXBZYKmYPCb
///   HBR1IBlCQA2nLGf0qRuJNJZg5iEzXows/6tc8YymZkQE7nolapWsQ+upk2y5Xdp/
///   axiuprIs9JzkYK8Ox0r+dlwCG1kSW+UAbX0bQ/qUqlsTvU6muVuMP8vZYHxJ3wmb
///   +ufRBKztPTQ/rYWaYQcgC0RWI20HTFBMxlTAyNxYNWzX7RKFkGVVyB9RsAtmcc8g
///   +j4OdosbfNoJPS0HeIfNpAznDfHKdxDk2Yc1tV6RHBrC1ynyLE9+TaflIAdo2MVv
///   KLMLq51GqYKtgJFIlBRPQqKoyXdz3fGvXrTkf/WY9QNq0J1Vk5ERePZ54mN8iZB7
///   9lwy/AkCgYEA6FXzosxswaJ2wQLeoYc7ceaweX/SwTvxHgXzRyJIIT0eJWgx13Wo
///   /WA3Iziimsjf6qE+SI/8laxPp2A86VMaIt3Z3mJN/CqSVGw8LK2AQst+OwdPyDMu
///   iacE8lj/IFGC8mwNUAb9CzGU3JpU4PxxGFjS/eMtGeRXCWkK4NE+G08CgYEA1Kp9
///   N2JrVlqUz+gAX+LPmE9OEMAS9WQSQsfCHGogIFDGGcNf7+uwBM7GAaSJIP01zcoe
///   VAgWdzXCv3FLhsaZoJ6RyLOLay5phbu1iaTr4UNYm5WtYTzMzqh8l1+MFFDl9xDB
///   vULuCIIrglM5MeS/qnSg1uMoH2oVPj9TVst/ir8CgYEAxrI7Ws9Zc4Bt70N1As+U
///   lySjaEVZCMkqvHJ6TCuVZFfQoE0r0whdLdRLU2PsLFP+q7qaeZQqgBaNSKeVcDYR
///   9B+nY/jOmQoPewPVsp/vQTCnE/R81spu0mp0YI6cIheT1Z9zAy322svcc43JaWB7
///   mEbeqyLOP4Z4qSOcmghZBSECgYACvR9Xs0DGn+wCsW4vze/2ei77MD4OQvepPIFX
///   dFZtlBy5ADcgE9z0cuVB6CiL8DbdK5kwY9pGNr8HUCI03iHkW6Zs+0L0YmihfEVe
///   PG19PSzK9CaDdhD9KFZSbLyVFmWfxOt50H7YRTTiPMgjyFpfi5j2q348yVT0tEQS
///   fhRqaQKBgAcWPokmJ7EbYQGeMbS7HC8eWO/RyamlnSffdCdSc7ue3zdVJxpAkQ8W
///   qu80pEIF6raIQfAf8MXiiZ7auFOSnHQTXUbhCpvDLKi0Mwq3G8Pl07l+2s6dQG6T
///   lv6XTQaMyf6n1yjzL+fzDrH3qXMxHMO/b13EePXpDMpY7HQpoLDi
///   -----END RSA PRIVATE KEY-----
///
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleAuthenticatedOriginPullsHostnameCertificate = new Cloudflare.AuthenticatedOriginPullsHostnameCertificate("example_authenticated_origin_pulls_hostname_certificate", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Certificate = @"  -----BEGIN CERTIFICATE-----
///   MIIDtTCCAp2gAwIBAgIJAMHAwfXZ5/PWMA0GCSqGSIb3DQEBCwUAMEUxCzAJBgNV
///   BAYTAkFVMRMwEQYDVQQIEwpTb21lLVN0YXRlMSEwHwYDVQQKExhJbnRlcm5ldCBX
///   aWRnaXRzIFB0eSBMdGQwHhcNMTYwODI0MTY0MzAxWhcNMTYxMTIyMTY0MzAxWjBF
///   MQswCQYDVQQGEwJBVTETMBEGA1UECBMKU29tZS1TdGF0ZTEhMB8GA1UEChMYSW50
///   ZXJuZXQgV2lkZ2l0cyBQdHkgTHRkMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIB
///   CgKCAQEAwQHoetcl9+5ikGzV6cMzWtWPJHqXT3wpbEkRU9Yz7lgvddmGdtcGbg/1
///   CGZu0jJGkMoppoUo4c3dts3iwqRYmBikUP77wwY2QGmDZw2FvkJCJlKnabIRuGvB
///   KwzESIXgKk2016aTP6/dAjEHyo6SeoK8lkIySUvK0fyOVlsiEsCmOpidtnKX/a+5
///   0GjB79CJH4ER2lLVZnhePFR/zUOyPxZQQ4naHf7yu/b5jhO0f8fwt+pyFxIXjbEI
///   dZliWRkRMtzrHOJIhrmJ2A1J7iOrirbbwillwjjNVUWPf3IJ3M12S9pEewooaeO2
///   izNTERcG9HzAacbVRn2Y2SWIyT/18QIDAQABo4GnMIGkMB0GA1UdDgQWBBT/LbE4
///   9rWf288N6sJA5BRb6FJIGDB1BgNVHSMEbjBsgBT/LbE49rWf288N6sJA5BRb6FJI
///   GKFJpEcwRTELMAkGA1UEBhMCQVUxEzARBgNVBAgTClNvbWUtU3RhdGUxITAfBgNV
///   BAoTGEludGVybmV0IFdpZGdpdHMgUHR5IEx0ZIIJAMHAwfXZ5/PWMAwGA1UdEwQF
///   MAMBAf8wDQYJKoZIhvcNAQELBQADggEBAHHFwl0tH0quUYZYO0dZYt4R7SJ0pCm2
///   2satiyzHl4OnXcHDpekAo7/a09c6Lz6AU83cKy/+x3/djYHXWba7HpEu0dR3ugQP
///   Mlr4zrhd9xKZ0KZKiYmtJH+ak4OM4L3FbT0owUZPyjLSlhMtJVcoRp5CJsjAMBUG
///   SvD8RX+T01wzox/Qb+lnnNnOlaWpqu8eoOenybxKp1a9ULzIVvN/LAcc+14vioFq
///   2swRWtmocBAs8QR9n4uvbpiYvS8eYueDCWMM4fvFfBhaDZ3N9IbtySh3SpFdQDhw
///   YbjM2rxXiyLGxB4Bol7QTv4zHif7Zt89FReT/NBy4rzaskDJY5L6xmY=
///   -----END CERTIFICATE-----
///
/// ",
///         PrivateKey = @"  -----BEGIN RSA PRIVATE KEY-----
///   MIIEowIBAAKCAQEAwQHoetcl9+5ikGzV6cMzWtWPJHqXT3wpbEkRU9Yz7lgvddmG
///   dtcGbg/1CGZu0jJGkMoppoUo4c3dts3iwqRYmBikUP77wwY2QGmDZw2FvkJCJlKn
///   abIRuGvBKwzESIXgKk2016aTP6/dAjEHyo6SeoK8lkIySUvK0fyOVlsiEsCmOpid
///   tnKX/a+50GjB79CJH4ER2lLVZnhePFR/zUOyPxZQQ4naHf7yu/b5jhO0f8fwt+py
///   FxIXjbEIdZliWRkRMtzrHOJIhrmJ2A1J7iOrirbbwillwjjNVUWPf3IJ3M12S9pE
///   ewooaeO2izNTERcG9HzAacbVRn2Y2SWIyT/18QIDAQABAoIBACbhTYXBZYKmYPCb
///   HBR1IBlCQA2nLGf0qRuJNJZg5iEzXows/6tc8YymZkQE7nolapWsQ+upk2y5Xdp/
///   axiuprIs9JzkYK8Ox0r+dlwCG1kSW+UAbX0bQ/qUqlsTvU6muVuMP8vZYHxJ3wmb
///   +ufRBKztPTQ/rYWaYQcgC0RWI20HTFBMxlTAyNxYNWzX7RKFkGVVyB9RsAtmcc8g
///   +j4OdosbfNoJPS0HeIfNpAznDfHKdxDk2Yc1tV6RHBrC1ynyLE9+TaflIAdo2MVv
///   KLMLq51GqYKtgJFIlBRPQqKoyXdz3fGvXrTkf/WY9QNq0J1Vk5ERePZ54mN8iZB7
///   9lwy/AkCgYEA6FXzosxswaJ2wQLeoYc7ceaweX/SwTvxHgXzRyJIIT0eJWgx13Wo
///   /WA3Iziimsjf6qE+SI/8laxPp2A86VMaIt3Z3mJN/CqSVGw8LK2AQst+OwdPyDMu
///   iacE8lj/IFGC8mwNUAb9CzGU3JpU4PxxGFjS/eMtGeRXCWkK4NE+G08CgYEA1Kp9
///   N2JrVlqUz+gAX+LPmE9OEMAS9WQSQsfCHGogIFDGGcNf7+uwBM7GAaSJIP01zcoe
///   VAgWdzXCv3FLhsaZoJ6RyLOLay5phbu1iaTr4UNYm5WtYTzMzqh8l1+MFFDl9xDB
///   vULuCIIrglM5MeS/qnSg1uMoH2oVPj9TVst/ir8CgYEAxrI7Ws9Zc4Bt70N1As+U
///   lySjaEVZCMkqvHJ6TCuVZFfQoE0r0whdLdRLU2PsLFP+q7qaeZQqgBaNSKeVcDYR
///   9B+nY/jOmQoPewPVsp/vQTCnE/R81spu0mp0YI6cIheT1Z9zAy322svcc43JaWB7
///   mEbeqyLOP4Z4qSOcmghZBSECgYACvR9Xs0DGn+wCsW4vze/2ei77MD4OQvepPIFX
///   dFZtlBy5ADcgE9z0cuVB6CiL8DbdK5kwY9pGNr8HUCI03iHkW6Zs+0L0YmihfEVe
///   PG19PSzK9CaDdhD9KFZSbLyVFmWfxOt50H7YRTTiPMgjyFpfi5j2q348yVT0tEQS
///   fhRqaQKBgAcWPokmJ7EbYQGeMbS7HC8eWO/RyamlnSffdCdSc7ue3zdVJxpAkQ8W
///   qu80pEIF6raIQfAf8MXiiZ7auFOSnHQTXUbhCpvDLKi0Mwq3G8Pl07l+2s6dQG6T
///   lv6XTQaMyf6n1yjzL+fzDrH3qXMxHMO/b13EePXpDMpY7HQpoLDi
///   -----END RSA PRIVATE KEY-----
///
/// ",
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
/// 		_, err := cloudflare.NewAuthenticatedOriginPullsHostnameCertificate(ctx, "example_authenticated_origin_pulls_hostname_certificate", &cloudflare.AuthenticatedOriginPullsHostnameCertificateArgs{
/// 			ZoneId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Certificate: pulumi.String(`  -----BEGIN CERTIFICATE-----
///   MIIDtTCCAp2gAwIBAgIJAMHAwfXZ5/PWMA0GCSqGSIb3DQEBCwUAMEUxCzAJBgNV
///   BAYTAkFVMRMwEQYDVQQIEwpTb21lLVN0YXRlMSEwHwYDVQQKExhJbnRlcm5ldCBX
///   aWRnaXRzIFB0eSBMdGQwHhcNMTYwODI0MTY0MzAxWhcNMTYxMTIyMTY0MzAxWjBF
///   MQswCQYDVQQGEwJBVTETMBEGA1UECBMKU29tZS1TdGF0ZTEhMB8GA1UEChMYSW50
///   ZXJuZXQgV2lkZ2l0cyBQdHkgTHRkMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIB
///   CgKCAQEAwQHoetcl9+5ikGzV6cMzWtWPJHqXT3wpbEkRU9Yz7lgvddmGdtcGbg/1
///   CGZu0jJGkMoppoUo4c3dts3iwqRYmBikUP77wwY2QGmDZw2FvkJCJlKnabIRuGvB
///   KwzESIXgKk2016aTP6/dAjEHyo6SeoK8lkIySUvK0fyOVlsiEsCmOpidtnKX/a+5
///   0GjB79CJH4ER2lLVZnhePFR/zUOyPxZQQ4naHf7yu/b5jhO0f8fwt+pyFxIXjbEI
///   dZliWRkRMtzrHOJIhrmJ2A1J7iOrirbbwillwjjNVUWPf3IJ3M12S9pEewooaeO2
///   izNTERcG9HzAacbVRn2Y2SWIyT/18QIDAQABo4GnMIGkMB0GA1UdDgQWBBT/LbE4
///   9rWf288N6sJA5BRb6FJIGDB1BgNVHSMEbjBsgBT/LbE49rWf288N6sJA5BRb6FJI
///   GKFJpEcwRTELMAkGA1UEBhMCQVUxEzARBgNVBAgTClNvbWUtU3RhdGUxITAfBgNV
///   BAoTGEludGVybmV0IFdpZGdpdHMgUHR5IEx0ZIIJAMHAwfXZ5/PWMAwGA1UdEwQF
///   MAMBAf8wDQYJKoZIhvcNAQELBQADggEBAHHFwl0tH0quUYZYO0dZYt4R7SJ0pCm2
///   2satiyzHl4OnXcHDpekAo7/a09c6Lz6AU83cKy/+x3/djYHXWba7HpEu0dR3ugQP
///   Mlr4zrhd9xKZ0KZKiYmtJH+ak4OM4L3FbT0owUZPyjLSlhMtJVcoRp5CJsjAMBUG
///   SvD8RX+T01wzox/Qb+lnnNnOlaWpqu8eoOenybxKp1a9ULzIVvN/LAcc+14vioFq
///   2swRWtmocBAs8QR9n4uvbpiYvS8eYueDCWMM4fvFfBhaDZ3N9IbtySh3SpFdQDhw
///   YbjM2rxXiyLGxB4Bol7QTv4zHif7Zt89FReT/NBy4rzaskDJY5L6xmY=
///   -----END CERTIFICATE-----
///
/// `),
/// 			PrivateKey: pulumi.String(`  -----BEGIN RSA PRIVATE KEY-----
///   MIIEowIBAAKCAQEAwQHoetcl9+5ikGzV6cMzWtWPJHqXT3wpbEkRU9Yz7lgvddmG
///   dtcGbg/1CGZu0jJGkMoppoUo4c3dts3iwqRYmBikUP77wwY2QGmDZw2FvkJCJlKn
///   abIRuGvBKwzESIXgKk2016aTP6/dAjEHyo6SeoK8lkIySUvK0fyOVlsiEsCmOpid
///   tnKX/a+50GjB79CJH4ER2lLVZnhePFR/zUOyPxZQQ4naHf7yu/b5jhO0f8fwt+py
///   FxIXjbEIdZliWRkRMtzrHOJIhrmJ2A1J7iOrirbbwillwjjNVUWPf3IJ3M12S9pE
///   ewooaeO2izNTERcG9HzAacbVRn2Y2SWIyT/18QIDAQABAoIBACbhTYXBZYKmYPCb
///   HBR1IBlCQA2nLGf0qRuJNJZg5iEzXows/6tc8YymZkQE7nolapWsQ+upk2y5Xdp/
///   axiuprIs9JzkYK8Ox0r+dlwCG1kSW+UAbX0bQ/qUqlsTvU6muVuMP8vZYHxJ3wmb
///   +ufRBKztPTQ/rYWaYQcgC0RWI20HTFBMxlTAyNxYNWzX7RKFkGVVyB9RsAtmcc8g
///   +j4OdosbfNoJPS0HeIfNpAznDfHKdxDk2Yc1tV6RHBrC1ynyLE9+TaflIAdo2MVv
///   KLMLq51GqYKtgJFIlBRPQqKoyXdz3fGvXrTkf/WY9QNq0J1Vk5ERePZ54mN8iZB7
///   9lwy/AkCgYEA6FXzosxswaJ2wQLeoYc7ceaweX/SwTvxHgXzRyJIIT0eJWgx13Wo
///   /WA3Iziimsjf6qE+SI/8laxPp2A86VMaIt3Z3mJN/CqSVGw8LK2AQst+OwdPyDMu
///   iacE8lj/IFGC8mwNUAb9CzGU3JpU4PxxGFjS/eMtGeRXCWkK4NE+G08CgYEA1Kp9
///   N2JrVlqUz+gAX+LPmE9OEMAS9WQSQsfCHGogIFDGGcNf7+uwBM7GAaSJIP01zcoe
///   VAgWdzXCv3FLhsaZoJ6RyLOLay5phbu1iaTr4UNYm5WtYTzMzqh8l1+MFFDl9xDB
///   vULuCIIrglM5MeS/qnSg1uMoH2oVPj9TVst/ir8CgYEAxrI7Ws9Zc4Bt70N1As+U
///   lySjaEVZCMkqvHJ6TCuVZFfQoE0r0whdLdRLU2PsLFP+q7qaeZQqgBaNSKeVcDYR
///   9B+nY/jOmQoPewPVsp/vQTCnE/R81spu0mp0YI6cIheT1Z9zAy322svcc43JaWB7
///   mEbeqyLOP4Z4qSOcmghZBSECgYACvR9Xs0DGn+wCsW4vze/2ei77MD4OQvepPIFX
///   dFZtlBy5ADcgE9z0cuVB6CiL8DbdK5kwY9pGNr8HUCI03iHkW6Zs+0L0YmihfEVe
///   PG19PSzK9CaDdhD9KFZSbLyVFmWfxOt50H7YRTTiPMgjyFpfi5j2q348yVT0tEQS
///   fhRqaQKBgAcWPokmJ7EbYQGeMbS7HC8eWO/RyamlnSffdCdSc7ue3zdVJxpAkQ8W
///   qu80pEIF6raIQfAf8MXiiZ7auFOSnHQTXUbhCpvDLKi0Mwq3G8Pl07l+2s6dQG6T
///   lv6XTQaMyf6n1yjzL+fzDrH3qXMxHMO/b13EePXpDMpY7HQpoLDi
///   -----END RSA PRIVATE KEY-----
///
/// `),
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
/// resource "cloudflare_authenticatedoriginpullshostnamecertificate" "example_authenticated_origin_pulls_hostname_certificate" {
///   zone_id     = "023e105f4ecef8ad9ca31a8372d0c353"
///   certificate = "  -----BEGIN CERTIFICATE-----\n  MIIDtTCCAp2gAwIBAgIJAMHAwfXZ5/PWMA0GCSqGSIb3DQEBCwUAMEUxCzAJBgNV\n  BAYTAkFVMRMwEQYDVQQIEwpTb21lLVN0YXRlMSEwHwYDVQQKExhJbnRlcm5ldCBX\n  aWRnaXRzIFB0eSBMdGQwHhcNMTYwODI0MTY0MzAxWhcNMTYxMTIyMTY0MzAxWjBF\n  MQswCQYDVQQGEwJBVTETMBEGA1UECBMKU29tZS1TdGF0ZTEhMB8GA1UEChMYSW50\n  ZXJuZXQgV2lkZ2l0cyBQdHkgTHRkMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIB\n  CgKCAQEAwQHoetcl9+5ikGzV6cMzWtWPJHqXT3wpbEkRU9Yz7lgvddmGdtcGbg/1\n  CGZu0jJGkMoppoUo4c3dts3iwqRYmBikUP77wwY2QGmDZw2FvkJCJlKnabIRuGvB\n  KwzESIXgKk2016aTP6/dAjEHyo6SeoK8lkIySUvK0fyOVlsiEsCmOpidtnKX/a+5\n  0GjB79CJH4ER2lLVZnhePFR/zUOyPxZQQ4naHf7yu/b5jhO0f8fwt+pyFxIXjbEI\n  dZliWRkRMtzrHOJIhrmJ2A1J7iOrirbbwillwjjNVUWPf3IJ3M12S9pEewooaeO2\n  izNTERcG9HzAacbVRn2Y2SWIyT/18QIDAQABo4GnMIGkMB0GA1UdDgQWBBT/LbE4\n  9rWf288N6sJA5BRb6FJIGDB1BgNVHSMEbjBsgBT/LbE49rWf288N6sJA5BRb6FJI\n  GKFJpEcwRTELMAkGA1UEBhMCQVUxEzARBgNVBAgTClNvbWUtU3RhdGUxITAfBgNV\n  BAoTGEludGVybmV0IFdpZGdpdHMgUHR5IEx0ZIIJAMHAwfXZ5/PWMAwGA1UdEwQF\n  MAMBAf8wDQYJKoZIhvcNAQELBQADggEBAHHFwl0tH0quUYZYO0dZYt4R7SJ0pCm2\n  2satiyzHl4OnXcHDpekAo7/a09c6Lz6AU83cKy/+x3/djYHXWba7HpEu0dR3ugQP\n  Mlr4zrhd9xKZ0KZKiYmtJH+ak4OM4L3FbT0owUZPyjLSlhMtJVcoRp5CJsjAMBUG\n  SvD8RX+T01wzox/Qb+lnnNnOlaWpqu8eoOenybxKp1a9ULzIVvN/LAcc+14vioFq\n  2swRWtmocBAs8QR9n4uvbpiYvS8eYueDCWMM4fvFfBhaDZ3N9IbtySh3SpFdQDhw\n  YbjM2rxXiyLGxB4Bol7QTv4zHif7Zt89FReT/NBy4rzaskDJY5L6xmY=\n  -----END CERTIFICATE-----\n\n"
///   private_key = "  -----BEGIN RSA PRIVATE KEY-----\n  MIIEowIBAAKCAQEAwQHoetcl9+5ikGzV6cMzWtWPJHqXT3wpbEkRU9Yz7lgvddmG\n  dtcGbg/1CGZu0jJGkMoppoUo4c3dts3iwqRYmBikUP77wwY2QGmDZw2FvkJCJlKn\n  abIRuGvBKwzESIXgKk2016aTP6/dAjEHyo6SeoK8lkIySUvK0fyOVlsiEsCmOpid\n  tnKX/a+50GjB79CJH4ER2lLVZnhePFR/zUOyPxZQQ4naHf7yu/b5jhO0f8fwt+py\n  FxIXjbEIdZliWRkRMtzrHOJIhrmJ2A1J7iOrirbbwillwjjNVUWPf3IJ3M12S9pE\n  ewooaeO2izNTERcG9HzAacbVRn2Y2SWIyT/18QIDAQABAoIBACbhTYXBZYKmYPCb\n  HBR1IBlCQA2nLGf0qRuJNJZg5iEzXows/6tc8YymZkQE7nolapWsQ+upk2y5Xdp/\n  axiuprIs9JzkYK8Ox0r+dlwCG1kSW+UAbX0bQ/qUqlsTvU6muVuMP8vZYHxJ3wmb\n  +ufRBKztPTQ/rYWaYQcgC0RWI20HTFBMxlTAyNxYNWzX7RKFkGVVyB9RsAtmcc8g\n  +j4OdosbfNoJPS0HeIfNpAznDfHKdxDk2Yc1tV6RHBrC1ynyLE9+TaflIAdo2MVv\n  KLMLq51GqYKtgJFIlBRPQqKoyXdz3fGvXrTkf/WY9QNq0J1Vk5ERePZ54mN8iZB7\n  9lwy/AkCgYEA6FXzosxswaJ2wQLeoYc7ceaweX/SwTvxHgXzRyJIIT0eJWgx13Wo\n  /WA3Iziimsjf6qE+SI/8laxPp2A86VMaIt3Z3mJN/CqSVGw8LK2AQst+OwdPyDMu\n  iacE8lj/IFGC8mwNUAb9CzGU3JpU4PxxGFjS/eMtGeRXCWkK4NE+G08CgYEA1Kp9\n  N2JrVlqUz+gAX+LPmE9OEMAS9WQSQsfCHGogIFDGGcNf7+uwBM7GAaSJIP01zcoe\n  VAgWdzXCv3FLhsaZoJ6RyLOLay5phbu1iaTr4UNYm5WtYTzMzqh8l1+MFFDl9xDB\n  vULuCIIrglM5MeS/qnSg1uMoH2oVPj9TVst/ir8CgYEAxrI7Ws9Zc4Bt70N1As+U\n  lySjaEVZCMkqvHJ6TCuVZFfQoE0r0whdLdRLU2PsLFP+q7qaeZQqgBaNSKeVcDYR\n  9B+nY/jOmQoPewPVsp/vQTCnE/R81spu0mp0YI6cIheT1Z9zAy322svcc43JaWB7\n  mEbeqyLOP4Z4qSOcmghZBSECgYACvR9Xs0DGn+wCsW4vze/2ei77MD4OQvepPIFX\n  dFZtlBy5ADcgE9z0cuVB6CiL8DbdK5kwY9pGNr8HUCI03iHkW6Zs+0L0YmihfEVe\n  PG19PSzK9CaDdhD9KFZSbLyVFmWfxOt50H7YRTTiPMgjyFpfi5j2q348yVT0tEQS\n  fhRqaQKBgAcWPokmJ7EbYQGeMbS7HC8eWO/RyamlnSffdCdSc7ue3zdVJxpAkQ8W\n  qu80pEIF6raIQfAf8MXiiZ7auFOSnHQTXUbhCpvDLKi0Mwq3G8Pl07l+2s6dQG6T\n  lv6XTQaMyf6n1yjzL+fzDrH3qXMxHMO/b13EePXpDMpY7HQpoLDi\n  -----END RSA PRIVATE KEY-----\n\n"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.AuthenticatedOriginPullsHostnameCertificate;
/// import com.pulumi.cloudflare.AuthenticatedOriginPullsHostnameCertificateArgs;
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
///         var exampleAuthenticatedOriginPullsHostnameCertificate = new AuthenticatedOriginPullsHostnameCertificate("exampleAuthenticatedOriginPullsHostnameCertificate", AuthenticatedOriginPullsHostnameCertificateArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .certificate("""
///   -----BEGIN CERTIFICATE-----
///   MIIDtTCCAp2gAwIBAgIJAMHAwfXZ5/PWMA0GCSqGSIb3DQEBCwUAMEUxCzAJBgNV
///   BAYTAkFVMRMwEQYDVQQIEwpTb21lLVN0YXRlMSEwHwYDVQQKExhJbnRlcm5ldCBX
///   aWRnaXRzIFB0eSBMdGQwHhcNMTYwODI0MTY0MzAxWhcNMTYxMTIyMTY0MzAxWjBF
///   MQswCQYDVQQGEwJBVTETMBEGA1UECBMKU29tZS1TdGF0ZTEhMB8GA1UEChMYSW50
///   ZXJuZXQgV2lkZ2l0cyBQdHkgTHRkMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIB
///   CgKCAQEAwQHoetcl9+5ikGzV6cMzWtWPJHqXT3wpbEkRU9Yz7lgvddmGdtcGbg/1
///   CGZu0jJGkMoppoUo4c3dts3iwqRYmBikUP77wwY2QGmDZw2FvkJCJlKnabIRuGvB
///   KwzESIXgKk2016aTP6/dAjEHyo6SeoK8lkIySUvK0fyOVlsiEsCmOpidtnKX/a+5
///   0GjB79CJH4ER2lLVZnhePFR/zUOyPxZQQ4naHf7yu/b5jhO0f8fwt+pyFxIXjbEI
///   dZliWRkRMtzrHOJIhrmJ2A1J7iOrirbbwillwjjNVUWPf3IJ3M12S9pEewooaeO2
///   izNTERcG9HzAacbVRn2Y2SWIyT/18QIDAQABo4GnMIGkMB0GA1UdDgQWBBT/LbE4
///   9rWf288N6sJA5BRb6FJIGDB1BgNVHSMEbjBsgBT/LbE49rWf288N6sJA5BRb6FJI
///   GKFJpEcwRTELMAkGA1UEBhMCQVUxEzARBgNVBAgTClNvbWUtU3RhdGUxITAfBgNV
///   BAoTGEludGVybmV0IFdpZGdpdHMgUHR5IEx0ZIIJAMHAwfXZ5/PWMAwGA1UdEwQF
///   MAMBAf8wDQYJKoZIhvcNAQELBQADggEBAHHFwl0tH0quUYZYO0dZYt4R7SJ0pCm2
///   2satiyzHl4OnXcHDpekAo7/a09c6Lz6AU83cKy/+x3/djYHXWba7HpEu0dR3ugQP
///   Mlr4zrhd9xKZ0KZKiYmtJH+ak4OM4L3FbT0owUZPyjLSlhMtJVcoRp5CJsjAMBUG
///   SvD8RX+T01wzox/Qb+lnnNnOlaWpqu8eoOenybxKp1a9ULzIVvN/LAcc+14vioFq
///   2swRWtmocBAs8QR9n4uvbpiYvS8eYueDCWMM4fvFfBhaDZ3N9IbtySh3SpFdQDhw
///   YbjM2rxXiyLGxB4Bol7QTv4zHif7Zt89FReT/NBy4rzaskDJY5L6xmY=
///   -----END CERTIFICATE-----
///
///             """)
///             .privateKey("""
///   -----BEGIN RSA PRIVATE KEY-----
///   MIIEowIBAAKCAQEAwQHoetcl9+5ikGzV6cMzWtWPJHqXT3wpbEkRU9Yz7lgvddmG
///   dtcGbg/1CGZu0jJGkMoppoUo4c3dts3iwqRYmBikUP77wwY2QGmDZw2FvkJCJlKn
///   abIRuGvBKwzESIXgKk2016aTP6/dAjEHyo6SeoK8lkIySUvK0fyOVlsiEsCmOpid
///   tnKX/a+50GjB79CJH4ER2lLVZnhePFR/zUOyPxZQQ4naHf7yu/b5jhO0f8fwt+py
///   FxIXjbEIdZliWRkRMtzrHOJIhrmJ2A1J7iOrirbbwillwjjNVUWPf3IJ3M12S9pE
///   ewooaeO2izNTERcG9HzAacbVRn2Y2SWIyT/18QIDAQABAoIBACbhTYXBZYKmYPCb
///   HBR1IBlCQA2nLGf0qRuJNJZg5iEzXows/6tc8YymZkQE7nolapWsQ+upk2y5Xdp/
///   axiuprIs9JzkYK8Ox0r+dlwCG1kSW+UAbX0bQ/qUqlsTvU6muVuMP8vZYHxJ3wmb
///   +ufRBKztPTQ/rYWaYQcgC0RWI20HTFBMxlTAyNxYNWzX7RKFkGVVyB9RsAtmcc8g
///   +j4OdosbfNoJPS0HeIfNpAznDfHKdxDk2Yc1tV6RHBrC1ynyLE9+TaflIAdo2MVv
///   KLMLq51GqYKtgJFIlBRPQqKoyXdz3fGvXrTkf/WY9QNq0J1Vk5ERePZ54mN8iZB7
///   9lwy/AkCgYEA6FXzosxswaJ2wQLeoYc7ceaweX/SwTvxHgXzRyJIIT0eJWgx13Wo
///   /WA3Iziimsjf6qE+SI/8laxPp2A86VMaIt3Z3mJN/CqSVGw8LK2AQst+OwdPyDMu
///   iacE8lj/IFGC8mwNUAb9CzGU3JpU4PxxGFjS/eMtGeRXCWkK4NE+G08CgYEA1Kp9
///   N2JrVlqUz+gAX+LPmE9OEMAS9WQSQsfCHGogIFDGGcNf7+uwBM7GAaSJIP01zcoe
///   VAgWdzXCv3FLhsaZoJ6RyLOLay5phbu1iaTr4UNYm5WtYTzMzqh8l1+MFFDl9xDB
///   vULuCIIrglM5MeS/qnSg1uMoH2oVPj9TVst/ir8CgYEAxrI7Ws9Zc4Bt70N1As+U
///   lySjaEVZCMkqvHJ6TCuVZFfQoE0r0whdLdRLU2PsLFP+q7qaeZQqgBaNSKeVcDYR
///   9B+nY/jOmQoPewPVsp/vQTCnE/R81spu0mp0YI6cIheT1Z9zAy322svcc43JaWB7
///   mEbeqyLOP4Z4qSOcmghZBSECgYACvR9Xs0DGn+wCsW4vze/2ei77MD4OQvepPIFX
///   dFZtlBy5ADcgE9z0cuVB6CiL8DbdK5kwY9pGNr8HUCI03iHkW6Zs+0L0YmihfEVe
///   PG19PSzK9CaDdhD9KFZSbLyVFmWfxOt50H7YRTTiPMgjyFpfi5j2q348yVT0tEQS
///   fhRqaQKBgAcWPokmJ7EbYQGeMbS7HC8eWO/RyamlnSffdCdSc7ue3zdVJxpAkQ8W
///   qu80pEIF6raIQfAf8MXiiZ7auFOSnHQTXUbhCpvDLKi0Mwq3G8Pl07l+2s6dQG6T
///   lv6XTQaMyf6n1yjzL+fzDrH3qXMxHMO/b13EePXpDMpY7HQpoLDi
///   -----END RSA PRIVATE KEY-----
///
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleAuthenticatedOriginPullsHostnameCertificate:
///     type: cloudflare:AuthenticatedOriginPullsHostnameCertificate
///     name: example_authenticated_origin_pulls_hostname_certificate
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       certificate: |2+
///           -----BEGIN CERTIFICATE-----
///           MIIDtTCCAp2gAwIBAgIJAMHAwfXZ5/PWMA0GCSqGSIb3DQEBCwUAMEUxCzAJBgNV
///           BAYTAkFVMRMwEQYDVQQIEwpTb21lLVN0YXRlMSEwHwYDVQQKExhJbnRlcm5ldCBX
///           aWRnaXRzIFB0eSBMdGQwHhcNMTYwODI0MTY0MzAxWhcNMTYxMTIyMTY0MzAxWjBF
///           MQswCQYDVQQGEwJBVTETMBEGA1UECBMKU29tZS1TdGF0ZTEhMB8GA1UEChMYSW50
///           ZXJuZXQgV2lkZ2l0cyBQdHkgTHRkMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIB
///           CgKCAQEAwQHoetcl9+5ikGzV6cMzWtWPJHqXT3wpbEkRU9Yz7lgvddmGdtcGbg/1
///           CGZu0jJGkMoppoUo4c3dts3iwqRYmBikUP77wwY2QGmDZw2FvkJCJlKnabIRuGvB
///           KwzESIXgKk2016aTP6/dAjEHyo6SeoK8lkIySUvK0fyOVlsiEsCmOpidtnKX/a+5
///           0GjB79CJH4ER2lLVZnhePFR/zUOyPxZQQ4naHf7yu/b5jhO0f8fwt+pyFxIXjbEI
///           dZliWRkRMtzrHOJIhrmJ2A1J7iOrirbbwillwjjNVUWPf3IJ3M12S9pEewooaeO2
///           izNTERcG9HzAacbVRn2Y2SWIyT/18QIDAQABo4GnMIGkMB0GA1UdDgQWBBT/LbE4
///           9rWf288N6sJA5BRb6FJIGDB1BgNVHSMEbjBsgBT/LbE49rWf288N6sJA5BRb6FJI
///           GKFJpEcwRTELMAkGA1UEBhMCQVUxEzARBgNVBAgTClNvbWUtU3RhdGUxITAfBgNV
///           BAoTGEludGVybmV0IFdpZGdpdHMgUHR5IEx0ZIIJAMHAwfXZ5/PWMAwGA1UdEwQF
///           MAMBAf8wDQYJKoZIhvcNAQELBQADggEBAHHFwl0tH0quUYZYO0dZYt4R7SJ0pCm2
///           2satiyzHl4OnXcHDpekAo7/a09c6Lz6AU83cKy/+x3/djYHXWba7HpEu0dR3ugQP
///           Mlr4zrhd9xKZ0KZKiYmtJH+ak4OM4L3FbT0owUZPyjLSlhMtJVcoRp5CJsjAMBUG
///           SvD8RX+T01wzox/Qb+lnnNnOlaWpqu8eoOenybxKp1a9ULzIVvN/LAcc+14vioFq
///           2swRWtmocBAs8QR9n4uvbpiYvS8eYueDCWMM4fvFfBhaDZ3N9IbtySh3SpFdQDhw
///           YbjM2rxXiyLGxB4Bol7QTv4zHif7Zt89FReT/NBy4rzaskDJY5L6xmY=
///           -----END CERTIFICATE-----
///
///       privateKey: |2+
///           -----BEGIN RSA PRIVATE KEY-----
///           MIIEowIBAAKCAQEAwQHoetcl9+5ikGzV6cMzWtWPJHqXT3wpbEkRU9Yz7lgvddmG
///           dtcGbg/1CGZu0jJGkMoppoUo4c3dts3iwqRYmBikUP77wwY2QGmDZw2FvkJCJlKn
///           abIRuGvBKwzESIXgKk2016aTP6/dAjEHyo6SeoK8lkIySUvK0fyOVlsiEsCmOpid
///           tnKX/a+50GjB79CJH4ER2lLVZnhePFR/zUOyPxZQQ4naHf7yu/b5jhO0f8fwt+py
///           FxIXjbEIdZliWRkRMtzrHOJIhrmJ2A1J7iOrirbbwillwjjNVUWPf3IJ3M12S9pE
///           ewooaeO2izNTERcG9HzAacbVRn2Y2SWIyT/18QIDAQABAoIBACbhTYXBZYKmYPCb
///           HBR1IBlCQA2nLGf0qRuJNJZg5iEzXows/6tc8YymZkQE7nolapWsQ+upk2y5Xdp/
///           axiuprIs9JzkYK8Ox0r+dlwCG1kSW+UAbX0bQ/qUqlsTvU6muVuMP8vZYHxJ3wmb
///           +ufRBKztPTQ/rYWaYQcgC0RWI20HTFBMxlTAyNxYNWzX7RKFkGVVyB9RsAtmcc8g
///           +j4OdosbfNoJPS0HeIfNpAznDfHKdxDk2Yc1tV6RHBrC1ynyLE9+TaflIAdo2MVv
///           KLMLq51GqYKtgJFIlBRPQqKoyXdz3fGvXrTkf/WY9QNq0J1Vk5ERePZ54mN8iZB7
///           9lwy/AkCgYEA6FXzosxswaJ2wQLeoYc7ceaweX/SwTvxHgXzRyJIIT0eJWgx13Wo
///           /WA3Iziimsjf6qE+SI/8laxPp2A86VMaIt3Z3mJN/CqSVGw8LK2AQst+OwdPyDMu
///           iacE8lj/IFGC8mwNUAb9CzGU3JpU4PxxGFjS/eMtGeRXCWkK4NE+G08CgYEA1Kp9
///           N2JrVlqUz+gAX+LPmE9OEMAS9WQSQsfCHGogIFDGGcNf7+uwBM7GAaSJIP01zcoe
///           VAgWdzXCv3FLhsaZoJ6RyLOLay5phbu1iaTr4UNYm5WtYTzMzqh8l1+MFFDl9xDB
///           vULuCIIrglM5MeS/qnSg1uMoH2oVPj9TVst/ir8CgYEAxrI7Ws9Zc4Bt70N1As+U
///           lySjaEVZCMkqvHJ6TCuVZFfQoE0r0whdLdRLU2PsLFP+q7qaeZQqgBaNSKeVcDYR
///           9B+nY/jOmQoPewPVsp/vQTCnE/R81spu0mp0YI6cIheT1Z9zAy322svcc43JaWB7
///           mEbeqyLOP4Z4qSOcmghZBSECgYACvR9Xs0DGn+wCsW4vze/2ei77MD4OQvepPIFX
///           dFZtlBy5ADcgE9z0cuVB6CiL8DbdK5kwY9pGNr8HUCI03iHkW6Zs+0L0YmihfEVe
///           PG19PSzK9CaDdhD9KFZSbLyVFmWfxOt50H7YRTTiPMgjyFpfi5j2q348yVT0tEQS
///           fhRqaQKBgAcWPokmJ7EbYQGeMbS7HC8eWO/RyamlnSffdCdSc7ue3zdVJxpAkQ8W
///           qu80pEIF6raIQfAf8MXiiZ7auFOSnHQTXUbhCpvDLKi0Mwq3G8Pl07l+2s6dQG6T
///           lv6XTQaMyf6n1yjzL+fzDrH3qXMxHMO/b13EePXpDMpY7HQpoLDi
///           -----END RSA PRIVATE KEY-----
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/authenticatedOriginPullsHostnameCertificate:AuthenticatedOriginPullsHostnameCertificate example '<zone_id>/<certificate_id>'
/// ```
class AuthenticatedOriginPullsHostnameCertificate extends pulumi.CustomResource {
  /// The hostname certificate.
  late final pulumi.Output<String> certificate;
  /// The date when the certificate expires.
  late final pulumi.Output<String> expiresOn;
  /// The certificate authority that issued the certificate.
  late final pulumi.Output<String> issuer;
  /// The hostname certificate's private key.
  late final pulumi.Output<String> privateKey;
  /// The serial number on the uploaded certificate.
  late final pulumi.Output<String> serialNumber;
  /// The type of hash used for the certificate.
  late final pulumi.Output<String> signature;
  /// Status of the certificate or the association.
  /// Available values: "initializing", "pending*deployment", "pending*deletion", "active", "deleted", "deployment*timed*out", "deletion*timed*out".
  late final pulumi.Output<String> status;
  /// The time when the certificate was uploaded.
  late final pulumi.Output<String> uploadedOn;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [AuthenticatedOriginPullsHostnameCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AuthenticatedOriginPullsHostnameCertificate]. {@macro pulumi_index_authenticated_origin_pulls_hostname_certificate_authenticated_origin_pulls_hostname_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AuthenticatedOriginPullsHostnameCertificate(
    String name, {
    AuthenticatedOriginPullsHostnameCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/authenticatedOriginPullsHostnameCertificate:AuthenticatedOriginPullsHostnameCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
          additionalSecretOutputs: const ['privateKey'],
        ) {
    certificate = registerOutput<String>('certificate');
    expiresOn = registerOutput<String>('expiresOn');
    issuer = registerOutput<String>('issuer');
    privateKey = registerOutput<String>('privateKey', isSecret: true);
    serialNumber = registerOutput<String>('serialNumber');
    signature = registerOutput<String>('signature');
    status = registerOutput<String>('status');
    uploadedOn = registerOutput<String>('uploadedOn');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [AuthenticatedOriginPullsHostnameCertificate] resource's state with the given [name] and [id].
  static AuthenticatedOriginPullsHostnameCertificate get(
    String name,
    pulumi.Input<String> id, {
    AuthenticatedOriginPullsHostnameCertificateState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AuthenticatedOriginPullsHostnameCertificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AuthenticatedOriginPullsHostnameCertificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/authenticatedOriginPullsHostnameCertificate:AuthenticatedOriginPullsHostnameCertificate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certificate = registerOutput<String>('certificate');
    expiresOn = registerOutput<String>('expiresOn');
    issuer = registerOutput<String>('issuer');
    privateKey = registerOutput<String>('privateKey', isSecret: true);
    serialNumber = registerOutput<String>('serialNumber');
    signature = registerOutput<String>('signature');
    status = registerOutput<String>('status');
    uploadedOn = registerOutput<String>('uploadedOn');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [AuthenticatedOriginPullsHostnameCertificate] resource.
  AuthenticatedOriginPullsHostnameCertificate.reference(String urn)
    : super(
        'cloudflare:index/authenticatedOriginPullsHostnameCertificate:AuthenticatedOriginPullsHostnameCertificate',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['privateKey'],
        isResourceReference: true,
      ) {
    certificate = registerOutput<String>('certificate');
    expiresOn = registerOutput<String>('expiresOn');
    issuer = registerOutput<String>('issuer');
    privateKey = registerOutput<String>('privateKey', isSecret: true);
    serialNumber = registerOutput<String>('serialNumber');
    signature = registerOutput<String>('signature');
    status = registerOutput<String>('status');
    uploadedOn = registerOutput<String>('uploadedOn');
    zoneId = registerOutput<String>('zoneId');
  }
}
