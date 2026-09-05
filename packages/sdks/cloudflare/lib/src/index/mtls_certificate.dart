import 'package:pulumi/pulumi.dart' as pulumi;
import 'mtls_certificate_args.dart';
import 'mtls_certificate_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleMtlsCertificate = new cloudflare.MtlsCertificate("example_mtls_certificate", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     ca: true,
///     certificates: `  -----BEGIN CERTIFICATE-----
///   MIIDmDCCAoCgAwIBAgIUKTOAZNjcXVZRj4oQt0SHsl1c1vMwDQYJKoZIhvcNAQELBQAwUTELMAkGA1UEBhMCVVMxFjAUBgNVBAgMDVNhbiBGcmFuY2lzY28xEzARBgNVBAcMCkNhbGlmb3JuaWExFTATBgNVBAoMDEV4YW1wbGUgSW5jLjAgFw0yMjExMjIxNjU5NDdaGA8yMTIyMTAyOTE2NTk0N1owUTELMAkGA1UEBhMCVVMxFjAUBgNVBAgMDVNhbiBGcmFuY2lzY28xEzARBgNVBAcMCkNhbGlmb3JuaWExFTATBgNVBAoMDEV4YW1wbGUgSW5jLjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMRcORwgJFTdcG/2GKI+cFYiOBNDKjCZUXEOvXWY42BkH9wxiMT869CO+enA1w5pIrXow6kCM1sQspHHaVmJUlotEMJxyoLFfA/8Kt1EKFyobOjuZs2SwyVyJ2sStvQuUQEosULZCNGZEqoH5g6zhMPxaxm7ZLrrsDZ9maNGVqo7EWLWHrZ57Q/5MtTrbxQL+eXjUmJ9K3kS+3uEwMdqR6Z3BluU1ivanpPc1CN2GNhdO0/hSY4YkGEnuLsqJyDd3cIiB1MxuCBJ4ZaqOd2viV1WcP3oU3dxVPm4MWyfYIldMWB14FahScxLhWdRnM9YZ/i9IFcLypXsuz7DjrJPtPUCAwEAAaNmMGQwHQYDVR0OBBYEFP5JzLUawNF+c3AXsYTEWHh7z2czMB8GA1UdIwQYMBaAFP5JzLUawNF+c3AXsYTEWHh7z2czMA4GA1UdDwEB/wQEAwIBBjASBgNVHRMBAf8ECDAGAQH/AgEBMA0GCSqGSIb3DQEBCwUAA4IBAQBc+Be7NDhpE09y7hLPZGRPl1cSKBw4RI0XIv6rlbSTFs5EebpTGjhx/whNxwEZhB9HZ7111Oa1YlT8xkI9DshB78mjAHCKBAJ76moK8tkG0aqdYpJ4ZcJTVBB7l98Rvgc7zfTii7WemTy72deBbSeiEtXavm4EF0mWjHhQ5Nxpnp00Bqn5g1x8CyTDypgmugnep+xG+iFzNmTdsz7WI9T/7kDMXqB7M/FPWBORyS98OJqNDswCLF8bIZYwUBEe+bRHFomoShMzaC3tvim7WCb16noDkSTMlfKO4pnvKhpcVdSgwcruATV7y+W+Lvmz2OT/Gui4JhqeoTewsxndhDDE
///   -----END CERTIFICATE-----
/// `,
///     name: "example_ca_cert",
///     privateKey: `  -----BEGIN PRIVATE KEY-----
///   MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDEXDkcICRU3XBv9hiiPnBWIjgTQyowmVFxDr11mONgZB/cMYjE/OvQjvnpwNcOaSK16MOpAjNbELKRx2lZiVJaLRDCccqCxXwP/CrdRChcqGzo7mbNksMlcidrErb0LlEBKLFC2QjRmRKqB+YOs4TD8WsZu2S667A2fZmjRlaqOxFi1h62ee0P+TLU628UC/nl41JifSt5Evt7hMDHakemdwZblNYr2p6T3NQjdhjYXTtP4UmOGJBhJ7i7Kicg3d3CIgdTMbggSeGWqjndr4ldVnD96FN3cVT5uDFsn2CJXTFgdeBWoUnMS4VnUZzPWGf4vSBXC8qV7Ls+w46yT7T1AgMBAAECggEAQZnp/oqCeNPOR6l5S2L+1tfx0gWjZ78hJVteUpZ0iHSK7F6kKeOxyOird7vUXV0kmo+cJq+0hp0Ke4eam640FCpwKfYoSQ4/R3vgujGWJnaihCN5tv5sMet0XeJPuz5qE7ALoKCvwI6aXLHs20aAeZIDTQJ9QbGSGnJVzOWn+JDTidIgZpN57RpXfSAwnJPTQK/PN8i5z108hsaDOdEgGmxYZ7kYqMqzX20KXmth58LDfPixs5JGtS60iiKC/wOcGzkB2/AdTSojR76oEU77cANP/3zO25NG//whUdYlW0t0d7PgXxIeJe+xgYnamDQJx3qonVyt4H77ha0ObRAj9QKBgQDicZr+VTwFMnELP3a+FXGnjehRiuS1i7MXGKxNweCD+dFlML0FplSQS8Ro2n+d8lu8BBXGx0qm6VXu8Rhn7TAUL6q+PCgfarzxfIhacb/TZCqfieIHsMlVBfhV5HCXnk+kis0tuC/PRArcWTwDHJUJXkBhvkUsNswvQzavDPI7KwKBgQDd/WgLkj7A3X5fgIHZH/GbDSBiXwzKb+rF4ZCT2XFgG/OAW7vapfcX/w+v+5lBLyrocmOAS3PGGAhM5T3HLnUCQfnK4qgps1Lqibkc9Tmnsn60LanUjuUMsYv/zSw70tozbzhJ0pioEpWfRxRZBztO2Rr8Ntm7h6Fk701EXGNAXwKBgQCD1xsjy2J3sCerIdcz0u5qXLAPkeuZW+34m4/ucdwTWwc0gEz9lhsULFj9p4G351zLuiEnq+7mAWLcDJlmIO3mQt6JhiLiL9Y0T4pgBmxmWqKKYtAsJB0EmMY+1BNN44mBRqMxZFTJu1cLdhT/xstrOeoIPqytknYNanfTMZlzIwKBgHrLXe5oq0XMP8dcMneEcAUwsaU4pr6kQd3L9EmUkl5zl7J9C+DaxWAEuwzBw/iGutlxzRB+rD/7szu14wJ29EqXbDGKRzMp+se5/yfBjm7xEZ1hVPw7PwBShfqt57X/4Ktq7lwHnmH6RcGhc+P7WBc5iO/S94YAdIp8xOT3pf9JAoGAE0QkqJUY+5Mgr+fBO0VNV72ZoPveGpW+De59uhKAOnu1zljQCUtk59m6+DXfm0tNYKtawa5n8iN71Zh+s62xXSt3pYi1Y5CCCmv8Y4BhwIcPwXKk3zEvLgSHVTpC0bayA9aSO4bbZgVXa5w+Z0w/vvfp9DWo1IS3EnQRrz6WMYA=
///   -----END PRIVATE KEY-----
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_mtls_certificate = cloudflare.MtlsCertificate("example_mtls_certificate",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     ca=True,
///     certificates="""  -----BEGIN CERTIFICATE-----
///   MIIDmDCCAoCgAwIBAgIUKTOAZNjcXVZRj4oQt0SHsl1c1vMwDQYJKoZIhvcNAQELBQAwUTELMAkGA1UEBhMCVVMxFjAUBgNVBAgMDVNhbiBGcmFuY2lzY28xEzARBgNVBAcMCkNhbGlmb3JuaWExFTATBgNVBAoMDEV4YW1wbGUgSW5jLjAgFw0yMjExMjIxNjU5NDdaGA8yMTIyMTAyOTE2NTk0N1owUTELMAkGA1UEBhMCVVMxFjAUBgNVBAgMDVNhbiBGcmFuY2lzY28xEzARBgNVBAcMCkNhbGlmb3JuaWExFTATBgNVBAoMDEV4YW1wbGUgSW5jLjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMRcORwgJFTdcG/2GKI+cFYiOBNDKjCZUXEOvXWY42BkH9wxiMT869CO+enA1w5pIrXow6kCM1sQspHHaVmJUlotEMJxyoLFfA/8Kt1EKFyobOjuZs2SwyVyJ2sStvQuUQEosULZCNGZEqoH5g6zhMPxaxm7ZLrrsDZ9maNGVqo7EWLWHrZ57Q/5MtTrbxQL+eXjUmJ9K3kS+3uEwMdqR6Z3BluU1ivanpPc1CN2GNhdO0/hSY4YkGEnuLsqJyDd3cIiB1MxuCBJ4ZaqOd2viV1WcP3oU3dxVPm4MWyfYIldMWB14FahScxLhWdRnM9YZ/i9IFcLypXsuz7DjrJPtPUCAwEAAaNmMGQwHQYDVR0OBBYEFP5JzLUawNF+c3AXsYTEWHh7z2czMB8GA1UdIwQYMBaAFP5JzLUawNF+c3AXsYTEWHh7z2czMA4GA1UdDwEB/wQEAwIBBjASBgNVHRMBAf8ECDAGAQH/AgEBMA0GCSqGSIb3DQEBCwUAA4IBAQBc+Be7NDhpE09y7hLPZGRPl1cSKBw4RI0XIv6rlbSTFs5EebpTGjhx/whNxwEZhB9HZ7111Oa1YlT8xkI9DshB78mjAHCKBAJ76moK8tkG0aqdYpJ4ZcJTVBB7l98Rvgc7zfTii7WemTy72deBbSeiEtXavm4EF0mWjHhQ5Nxpnp00Bqn5g1x8CyTDypgmugnep+xG+iFzNmTdsz7WI9T/7kDMXqB7M/FPWBORyS98OJqNDswCLF8bIZYwUBEe+bRHFomoShMzaC3tvim7WCb16noDkSTMlfKO4pnvKhpcVdSgwcruATV7y+W+Lvmz2OT/Gui4JhqeoTewsxndhDDE
///   -----END CERTIFICATE-----
/// """,
///     name="example_ca_cert",
///     private_key="""  -----BEGIN PRIVATE KEY-----
///   MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDEXDkcICRU3XBv9hiiPnBWIjgTQyowmVFxDr11mONgZB/cMYjE/OvQjvnpwNcOaSK16MOpAjNbELKRx2lZiVJaLRDCccqCxXwP/CrdRChcqGzo7mbNksMlcidrErb0LlEBKLFC2QjRmRKqB+YOs4TD8WsZu2S667A2fZmjRlaqOxFi1h62ee0P+TLU628UC/nl41JifSt5Evt7hMDHakemdwZblNYr2p6T3NQjdhjYXTtP4UmOGJBhJ7i7Kicg3d3CIgdTMbggSeGWqjndr4ldVnD96FN3cVT5uDFsn2CJXTFgdeBWoUnMS4VnUZzPWGf4vSBXC8qV7Ls+w46yT7T1AgMBAAECggEAQZnp/oqCeNPOR6l5S2L+1tfx0gWjZ78hJVteUpZ0iHSK7F6kKeOxyOird7vUXV0kmo+cJq+0hp0Ke4eam640FCpwKfYoSQ4/R3vgujGWJnaihCN5tv5sMet0XeJPuz5qE7ALoKCvwI6aXLHs20aAeZIDTQJ9QbGSGnJVzOWn+JDTidIgZpN57RpXfSAwnJPTQK/PN8i5z108hsaDOdEgGmxYZ7kYqMqzX20KXmth58LDfPixs5JGtS60iiKC/wOcGzkB2/AdTSojR76oEU77cANP/3zO25NG//whUdYlW0t0d7PgXxIeJe+xgYnamDQJx3qonVyt4H77ha0ObRAj9QKBgQDicZr+VTwFMnELP3a+FXGnjehRiuS1i7MXGKxNweCD+dFlML0FplSQS8Ro2n+d8lu8BBXGx0qm6VXu8Rhn7TAUL6q+PCgfarzxfIhacb/TZCqfieIHsMlVBfhV5HCXnk+kis0tuC/PRArcWTwDHJUJXkBhvkUsNswvQzavDPI7KwKBgQDd/WgLkj7A3X5fgIHZH/GbDSBiXwzKb+rF4ZCT2XFgG/OAW7vapfcX/w+v+5lBLyrocmOAS3PGGAhM5T3HLnUCQfnK4qgps1Lqibkc9Tmnsn60LanUjuUMsYv/zSw70tozbzhJ0pioEpWfRxRZBztO2Rr8Ntm7h6Fk701EXGNAXwKBgQCD1xsjy2J3sCerIdcz0u5qXLAPkeuZW+34m4/ucdwTWwc0gEz9lhsULFj9p4G351zLuiEnq+7mAWLcDJlmIO3mQt6JhiLiL9Y0T4pgBmxmWqKKYtAsJB0EmMY+1BNN44mBRqMxZFTJu1cLdhT/xstrOeoIPqytknYNanfTMZlzIwKBgHrLXe5oq0XMP8dcMneEcAUwsaU4pr6kQd3L9EmUkl5zl7J9C+DaxWAEuwzBw/iGutlxzRB+rD/7szu14wJ29EqXbDGKRzMp+se5/yfBjm7xEZ1hVPw7PwBShfqt57X/4Ktq7lwHnmH6RcGhc+P7WBc5iO/S94YAdIp8xOT3pf9JAoGAE0QkqJUY+5Mgr+fBO0VNV72ZoPveGpW+De59uhKAOnu1zljQCUtk59m6+DXfm0tNYKtawa5n8iN71Zh+s62xXSt3pYi1Y5CCCmv8Y4BhwIcPwXKk3zEvLgSHVTpC0bayA9aSO4bbZgVXa5w+Z0w/vvfp9DWo1IS3EnQRrz6WMYA=
///   -----END PRIVATE KEY-----
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
///     var exampleMtlsCertificate = new Cloudflare.MtlsCertificate("example_mtls_certificate", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Ca = true,
///         Certificates = @"  -----BEGIN CERTIFICATE-----
///   MIIDmDCCAoCgAwIBAgIUKTOAZNjcXVZRj4oQt0SHsl1c1vMwDQYJKoZIhvcNAQELBQAwUTELMAkGA1UEBhMCVVMxFjAUBgNVBAgMDVNhbiBGcmFuY2lzY28xEzARBgNVBAcMCkNhbGlmb3JuaWExFTATBgNVBAoMDEV4YW1wbGUgSW5jLjAgFw0yMjExMjIxNjU5NDdaGA8yMTIyMTAyOTE2NTk0N1owUTELMAkGA1UEBhMCVVMxFjAUBgNVBAgMDVNhbiBGcmFuY2lzY28xEzARBgNVBAcMCkNhbGlmb3JuaWExFTATBgNVBAoMDEV4YW1wbGUgSW5jLjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMRcORwgJFTdcG/2GKI+cFYiOBNDKjCZUXEOvXWY42BkH9wxiMT869CO+enA1w5pIrXow6kCM1sQspHHaVmJUlotEMJxyoLFfA/8Kt1EKFyobOjuZs2SwyVyJ2sStvQuUQEosULZCNGZEqoH5g6zhMPxaxm7ZLrrsDZ9maNGVqo7EWLWHrZ57Q/5MtTrbxQL+eXjUmJ9K3kS+3uEwMdqR6Z3BluU1ivanpPc1CN2GNhdO0/hSY4YkGEnuLsqJyDd3cIiB1MxuCBJ4ZaqOd2viV1WcP3oU3dxVPm4MWyfYIldMWB14FahScxLhWdRnM9YZ/i9IFcLypXsuz7DjrJPtPUCAwEAAaNmMGQwHQYDVR0OBBYEFP5JzLUawNF+c3AXsYTEWHh7z2czMB8GA1UdIwQYMBaAFP5JzLUawNF+c3AXsYTEWHh7z2czMA4GA1UdDwEB/wQEAwIBBjASBgNVHRMBAf8ECDAGAQH/AgEBMA0GCSqGSIb3DQEBCwUAA4IBAQBc+Be7NDhpE09y7hLPZGRPl1cSKBw4RI0XIv6rlbSTFs5EebpTGjhx/whNxwEZhB9HZ7111Oa1YlT8xkI9DshB78mjAHCKBAJ76moK8tkG0aqdYpJ4ZcJTVBB7l98Rvgc7zfTii7WemTy72deBbSeiEtXavm4EF0mWjHhQ5Nxpnp00Bqn5g1x8CyTDypgmugnep+xG+iFzNmTdsz7WI9T/7kDMXqB7M/FPWBORyS98OJqNDswCLF8bIZYwUBEe+bRHFomoShMzaC3tvim7WCb16noDkSTMlfKO4pnvKhpcVdSgwcruATV7y+W+Lvmz2OT/Gui4JhqeoTewsxndhDDE
///   -----END CERTIFICATE-----
/// ",
///         Name = "example_ca_cert",
///         PrivateKey = @"  -----BEGIN PRIVATE KEY-----
///   MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDEXDkcICRU3XBv9hiiPnBWIjgTQyowmVFxDr11mONgZB/cMYjE/OvQjvnpwNcOaSK16MOpAjNbELKRx2lZiVJaLRDCccqCxXwP/CrdRChcqGzo7mbNksMlcidrErb0LlEBKLFC2QjRmRKqB+YOs4TD8WsZu2S667A2fZmjRlaqOxFi1h62ee0P+TLU628UC/nl41JifSt5Evt7hMDHakemdwZblNYr2p6T3NQjdhjYXTtP4UmOGJBhJ7i7Kicg3d3CIgdTMbggSeGWqjndr4ldVnD96FN3cVT5uDFsn2CJXTFgdeBWoUnMS4VnUZzPWGf4vSBXC8qV7Ls+w46yT7T1AgMBAAECggEAQZnp/oqCeNPOR6l5S2L+1tfx0gWjZ78hJVteUpZ0iHSK7F6kKeOxyOird7vUXV0kmo+cJq+0hp0Ke4eam640FCpwKfYoSQ4/R3vgujGWJnaihCN5tv5sMet0XeJPuz5qE7ALoKCvwI6aXLHs20aAeZIDTQJ9QbGSGnJVzOWn+JDTidIgZpN57RpXfSAwnJPTQK/PN8i5z108hsaDOdEgGmxYZ7kYqMqzX20KXmth58LDfPixs5JGtS60iiKC/wOcGzkB2/AdTSojR76oEU77cANP/3zO25NG//whUdYlW0t0d7PgXxIeJe+xgYnamDQJx3qonVyt4H77ha0ObRAj9QKBgQDicZr+VTwFMnELP3a+FXGnjehRiuS1i7MXGKxNweCD+dFlML0FplSQS8Ro2n+d8lu8BBXGx0qm6VXu8Rhn7TAUL6q+PCgfarzxfIhacb/TZCqfieIHsMlVBfhV5HCXnk+kis0tuC/PRArcWTwDHJUJXkBhvkUsNswvQzavDPI7KwKBgQDd/WgLkj7A3X5fgIHZH/GbDSBiXwzKb+rF4ZCT2XFgG/OAW7vapfcX/w+v+5lBLyrocmOAS3PGGAhM5T3HLnUCQfnK4qgps1Lqibkc9Tmnsn60LanUjuUMsYv/zSw70tozbzhJ0pioEpWfRxRZBztO2Rr8Ntm7h6Fk701EXGNAXwKBgQCD1xsjy2J3sCerIdcz0u5qXLAPkeuZW+34m4/ucdwTWwc0gEz9lhsULFj9p4G351zLuiEnq+7mAWLcDJlmIO3mQt6JhiLiL9Y0T4pgBmxmWqKKYtAsJB0EmMY+1BNN44mBRqMxZFTJu1cLdhT/xstrOeoIPqytknYNanfTMZlzIwKBgHrLXe5oq0XMP8dcMneEcAUwsaU4pr6kQd3L9EmUkl5zl7J9C+DaxWAEuwzBw/iGutlxzRB+rD/7szu14wJ29EqXbDGKRzMp+se5/yfBjm7xEZ1hVPw7PwBShfqt57X/4Ktq7lwHnmH6RcGhc+P7WBc5iO/S94YAdIp8xOT3pf9JAoGAE0QkqJUY+5Mgr+fBO0VNV72ZoPveGpW+De59uhKAOnu1zljQCUtk59m6+DXfm0tNYKtawa5n8iN71Zh+s62xXSt3pYi1Y5CCCmv8Y4BhwIcPwXKk3zEvLgSHVTpC0bayA9aSO4bbZgVXa5w+Z0w/vvfp9DWo1IS3EnQRrz6WMYA=
///   -----END PRIVATE KEY-----
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
/// 		_, err := cloudflare.NewMtlsCertificate(ctx, "example_mtls_certificate", &cloudflare.MtlsCertificateArgs{
/// 			AccountId:    pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Ca:           pulumi.Bool(true),
/// 			Certificates: pulumi.String("  -----BEGIN CERTIFICATE-----\n  MIIDmDCCAoCgAwIBAgIUKTOAZNjcXVZRj4oQt0SHsl1c1vMwDQYJKoZIhvcNAQELBQAwUTELMAkGA1UEBhMCVVMxFjAUBgNVBAgMDVNhbiBGcmFuY2lzY28xEzARBgNVBAcMCkNhbGlmb3JuaWExFTATBgNVBAoMDEV4YW1wbGUgSW5jLjAgFw0yMjExMjIxNjU5NDdaGA8yMTIyMTAyOTE2NTk0N1owUTELMAkGA1UEBhMCVVMxFjAUBgNVBAgMDVNhbiBGcmFuY2lzY28xEzARBgNVBAcMCkNhbGlmb3JuaWExFTATBgNVBAoMDEV4YW1wbGUgSW5jLjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMRcORwgJFTdcG/2GKI+cFYiOBNDKjCZUXEOvXWY42BkH9wxiMT869CO+enA1w5pIrXow6kCM1sQspHHaVmJUlotEMJxyoLFfA/8Kt1EKFyobOjuZs2SwyVyJ2sStvQuUQEosULZCNGZEqoH5g6zhMPxaxm7ZLrrsDZ9maNGVqo7EWLWHrZ57Q/5MtTrbxQL+eXjUmJ9K3kS+3uEwMdqR6Z3BluU1ivanpPc1CN2GNhdO0/hSY4YkGEnuLsqJyDd3cIiB1MxuCBJ4ZaqOd2viV1WcP3oU3dxVPm4MWyfYIldMWB14FahScxLhWdRnM9YZ/i9IFcLypXsuz7DjrJPtPUCAwEAAaNmMGQwHQYDVR0OBBYEFP5JzLUawNF+c3AXsYTEWHh7z2czMB8GA1UdIwQYMBaAFP5JzLUawNF+c3AXsYTEWHh7z2czMA4GA1UdDwEB/wQEAwIBBjASBgNVHRMBAf8ECDAGAQH/AgEBMA0GCSqGSIb3DQEBCwUAA4IBAQBc+Be7NDhpE09y7hLPZGRPl1cSKBw4RI0XIv6rlbSTFs5EebpTGjhx/whNxwEZhB9HZ7111Oa1YlT8xkI9DshB78mjAHCKBAJ76moK8tkG0aqdYpJ4ZcJTVBB7l98Rvgc7zfTii7WemTy72deBbSeiEtXavm4EF0mWjHhQ5Nxpnp00Bqn5g1x8CyTDypgmugnep+xG+iFzNmTdsz7WI9T/7kDMXqB7M/FPWBORyS98OJqNDswCLF8bIZYwUBEe+bRHFomoShMzaC3tvim7WCb16noDkSTMlfKO4pnvKhpcVdSgwcruATV7y+W+Lvmz2OT/Gui4JhqeoTewsxndhDDE\n  -----END CERTIFICATE-----\n"),
/// 			Name:         pulumi.String("example_ca_cert"),
/// 			PrivateKey:   pulumi.String("  -----BEGIN PRIVATE KEY-----\n  MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDEXDkcICRU3XBv9hiiPnBWIjgTQyowmVFxDr11mONgZB/cMYjE/OvQjvnpwNcOaSK16MOpAjNbELKRx2lZiVJaLRDCccqCxXwP/CrdRChcqGzo7mbNksMlcidrErb0LlEBKLFC2QjRmRKqB+YOs4TD8WsZu2S667A2fZmjRlaqOxFi1h62ee0P+TLU628UC/nl41JifSt5Evt7hMDHakemdwZblNYr2p6T3NQjdhjYXTtP4UmOGJBhJ7i7Kicg3d3CIgdTMbggSeGWqjndr4ldVnD96FN3cVT5uDFsn2CJXTFgdeBWoUnMS4VnUZzPWGf4vSBXC8qV7Ls+w46yT7T1AgMBAAECggEAQZnp/oqCeNPOR6l5S2L+1tfx0gWjZ78hJVteUpZ0iHSK7F6kKeOxyOird7vUXV0kmo+cJq+0hp0Ke4eam640FCpwKfYoSQ4/R3vgujGWJnaihCN5tv5sMet0XeJPuz5qE7ALoKCvwI6aXLHs20aAeZIDTQJ9QbGSGnJVzOWn+JDTidIgZpN57RpXfSAwnJPTQK/PN8i5z108hsaDOdEgGmxYZ7kYqMqzX20KXmth58LDfPixs5JGtS60iiKC/wOcGzkB2/AdTSojR76oEU77cANP/3zO25NG//whUdYlW0t0d7PgXxIeJe+xgYnamDQJx3qonVyt4H77ha0ObRAj9QKBgQDicZr+VTwFMnELP3a+FXGnjehRiuS1i7MXGKxNweCD+dFlML0FplSQS8Ro2n+d8lu8BBXGx0qm6VXu8Rhn7TAUL6q+PCgfarzxfIhacb/TZCqfieIHsMlVBfhV5HCXnk+kis0tuC/PRArcWTwDHJUJXkBhvkUsNswvQzavDPI7KwKBgQDd/WgLkj7A3X5fgIHZH/GbDSBiXwzKb+rF4ZCT2XFgG/OAW7vapfcX/w+v+5lBLyrocmOAS3PGGAhM5T3HLnUCQfnK4qgps1Lqibkc9Tmnsn60LanUjuUMsYv/zSw70tozbzhJ0pioEpWfRxRZBztO2Rr8Ntm7h6Fk701EXGNAXwKBgQCD1xsjy2J3sCerIdcz0u5qXLAPkeuZW+34m4/ucdwTWwc0gEz9lhsULFj9p4G351zLuiEnq+7mAWLcDJlmIO3mQt6JhiLiL9Y0T4pgBmxmWqKKYtAsJB0EmMY+1BNN44mBRqMxZFTJu1cLdhT/xstrOeoIPqytknYNanfTMZlzIwKBgHrLXe5oq0XMP8dcMneEcAUwsaU4pr6kQd3L9EmUkl5zl7J9C+DaxWAEuwzBw/iGutlxzRB+rD/7szu14wJ29EqXbDGKRzMp+se5/yfBjm7xEZ1hVPw7PwBShfqt57X/4Ktq7lwHnmH6RcGhc+P7WBc5iO/S94YAdIp8xOT3pf9JAoGAE0QkqJUY+5Mgr+fBO0VNV72ZoPveGpW+De59uhKAOnu1zljQCUtk59m6+DXfm0tNYKtawa5n8iN71Zh+s62xXSt3pYi1Y5CCCmv8Y4BhwIcPwXKk3zEvLgSHVTpC0bayA9aSO4bbZgVXa5w+Z0w/vvfp9DWo1IS3EnQRrz6WMYA=\n  -----END PRIVATE KEY-----\n"),
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
/// resource "cloudflare_mtlscertificate" "example_mtls_certificate" {
///   account_id   = "023e105f4ecef8ad9ca31a8372d0c353"
///   ca           = true
///   certificates = "  -----BEGIN CERTIFICATE-----\n  MIIDmDCCAoCgAwIBAgIUKTOAZNjcXVZRj4oQt0SHsl1c1vMwDQYJKoZIhvcNAQELBQAwUTELMAkGA1UEBhMCVVMxFjAUBgNVBAgMDVNhbiBGcmFuY2lzY28xEzARBgNVBAcMCkNhbGlmb3JuaWExFTATBgNVBAoMDEV4YW1wbGUgSW5jLjAgFw0yMjExMjIxNjU5NDdaGA8yMTIyMTAyOTE2NTk0N1owUTELMAkGA1UEBhMCVVMxFjAUBgNVBAgMDVNhbiBGcmFuY2lzY28xEzARBgNVBAcMCkNhbGlmb3JuaWExFTATBgNVBAoMDEV4YW1wbGUgSW5jLjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMRcORwgJFTdcG/2GKI+cFYiOBNDKjCZUXEOvXWY42BkH9wxiMT869CO+enA1w5pIrXow6kCM1sQspHHaVmJUlotEMJxyoLFfA/8Kt1EKFyobOjuZs2SwyVyJ2sStvQuUQEosULZCNGZEqoH5g6zhMPxaxm7ZLrrsDZ9maNGVqo7EWLWHrZ57Q/5MtTrbxQL+eXjUmJ9K3kS+3uEwMdqR6Z3BluU1ivanpPc1CN2GNhdO0/hSY4YkGEnuLsqJyDd3cIiB1MxuCBJ4ZaqOd2viV1WcP3oU3dxVPm4MWyfYIldMWB14FahScxLhWdRnM9YZ/i9IFcLypXsuz7DjrJPtPUCAwEAAaNmMGQwHQYDVR0OBBYEFP5JzLUawNF+c3AXsYTEWHh7z2czMB8GA1UdIwQYMBaAFP5JzLUawNF+c3AXsYTEWHh7z2czMA4GA1UdDwEB/wQEAwIBBjASBgNVHRMBAf8ECDAGAQH/AgEBMA0GCSqGSIb3DQEBCwUAA4IBAQBc+Be7NDhpE09y7hLPZGRPl1cSKBw4RI0XIv6rlbSTFs5EebpTGjhx/whNxwEZhB9HZ7111Oa1YlT8xkI9DshB78mjAHCKBAJ76moK8tkG0aqdYpJ4ZcJTVBB7l98Rvgc7zfTii7WemTy72deBbSeiEtXavm4EF0mWjHhQ5Nxpnp00Bqn5g1x8CyTDypgmugnep+xG+iFzNmTdsz7WI9T/7kDMXqB7M/FPWBORyS98OJqNDswCLF8bIZYwUBEe+bRHFomoShMzaC3tvim7WCb16noDkSTMlfKO4pnvKhpcVdSgwcruATV7y+W+Lvmz2OT/Gui4JhqeoTewsxndhDDE\n  -----END CERTIFICATE-----\n"
///   name         = "example_ca_cert"
///   private_key  = "  -----BEGIN PRIVATE KEY-----\n  MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDEXDkcICRU3XBv9hiiPnBWIjgTQyowmVFxDr11mONgZB/cMYjE/OvQjvnpwNcOaSK16MOpAjNbELKRx2lZiVJaLRDCccqCxXwP/CrdRChcqGzo7mbNksMlcidrErb0LlEBKLFC2QjRmRKqB+YOs4TD8WsZu2S667A2fZmjRlaqOxFi1h62ee0P+TLU628UC/nl41JifSt5Evt7hMDHakemdwZblNYr2p6T3NQjdhjYXTtP4UmOGJBhJ7i7Kicg3d3CIgdTMbggSeGWqjndr4ldVnD96FN3cVT5uDFsn2CJXTFgdeBWoUnMS4VnUZzPWGf4vSBXC8qV7Ls+w46yT7T1AgMBAAECggEAQZnp/oqCeNPOR6l5S2L+1tfx0gWjZ78hJVteUpZ0iHSK7F6kKeOxyOird7vUXV0kmo+cJq+0hp0Ke4eam640FCpwKfYoSQ4/R3vgujGWJnaihCN5tv5sMet0XeJPuz5qE7ALoKCvwI6aXLHs20aAeZIDTQJ9QbGSGnJVzOWn+JDTidIgZpN57RpXfSAwnJPTQK/PN8i5z108hsaDOdEgGmxYZ7kYqMqzX20KXmth58LDfPixs5JGtS60iiKC/wOcGzkB2/AdTSojR76oEU77cANP/3zO25NG//whUdYlW0t0d7PgXxIeJe+xgYnamDQJx3qonVyt4H77ha0ObRAj9QKBgQDicZr+VTwFMnELP3a+FXGnjehRiuS1i7MXGKxNweCD+dFlML0FplSQS8Ro2n+d8lu8BBXGx0qm6VXu8Rhn7TAUL6q+PCgfarzxfIhacb/TZCqfieIHsMlVBfhV5HCXnk+kis0tuC/PRArcWTwDHJUJXkBhvkUsNswvQzavDPI7KwKBgQDd/WgLkj7A3X5fgIHZH/GbDSBiXwzKb+rF4ZCT2XFgG/OAW7vapfcX/w+v+5lBLyrocmOAS3PGGAhM5T3HLnUCQfnK4qgps1Lqibkc9Tmnsn60LanUjuUMsYv/zSw70tozbzhJ0pioEpWfRxRZBztO2Rr8Ntm7h6Fk701EXGNAXwKBgQCD1xsjy2J3sCerIdcz0u5qXLAPkeuZW+34m4/ucdwTWwc0gEz9lhsULFj9p4G351zLuiEnq+7mAWLcDJlmIO3mQt6JhiLiL9Y0T4pgBmxmWqKKYtAsJB0EmMY+1BNN44mBRqMxZFTJu1cLdhT/xstrOeoIPqytknYNanfTMZlzIwKBgHrLXe5oq0XMP8dcMneEcAUwsaU4pr6kQd3L9EmUkl5zl7J9C+DaxWAEuwzBw/iGutlxzRB+rD/7szu14wJ29EqXbDGKRzMp+se5/yfBjm7xEZ1hVPw7PwBShfqt57X/4Ktq7lwHnmH6RcGhc+P7WBc5iO/S94YAdIp8xOT3pf9JAoGAE0QkqJUY+5Mgr+fBO0VNV72ZoPveGpW+De59uhKAOnu1zljQCUtk59m6+DXfm0tNYKtawa5n8iN71Zh+s62xXSt3pYi1Y5CCCmv8Y4BhwIcPwXKk3zEvLgSHVTpC0bayA9aSO4bbZgVXa5w+Z0w/vvfp9DWo1IS3EnQRrz6WMYA=\n  -----END PRIVATE KEY-----\n"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.MtlsCertificate;
/// import com.pulumi.cloudflare.MtlsCertificateArgs;
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
///         var exampleMtlsCertificate = new MtlsCertificate("exampleMtlsCertificate", MtlsCertificateArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .ca(true)
///             .certificates("""
///   -----BEGIN CERTIFICATE-----
///   MIIDmDCCAoCgAwIBAgIUKTOAZNjcXVZRj4oQt0SHsl1c1vMwDQYJKoZIhvcNAQELBQAwUTELMAkGA1UEBhMCVVMxFjAUBgNVBAgMDVNhbiBGcmFuY2lzY28xEzARBgNVBAcMCkNhbGlmb3JuaWExFTATBgNVBAoMDEV4YW1wbGUgSW5jLjAgFw0yMjExMjIxNjU5NDdaGA8yMTIyMTAyOTE2NTk0N1owUTELMAkGA1UEBhMCVVMxFjAUBgNVBAgMDVNhbiBGcmFuY2lzY28xEzARBgNVBAcMCkNhbGlmb3JuaWExFTATBgNVBAoMDEV4YW1wbGUgSW5jLjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMRcORwgJFTdcG/2GKI+cFYiOBNDKjCZUXEOvXWY42BkH9wxiMT869CO+enA1w5pIrXow6kCM1sQspHHaVmJUlotEMJxyoLFfA/8Kt1EKFyobOjuZs2SwyVyJ2sStvQuUQEosULZCNGZEqoH5g6zhMPxaxm7ZLrrsDZ9maNGVqo7EWLWHrZ57Q/5MtTrbxQL+eXjUmJ9K3kS+3uEwMdqR6Z3BluU1ivanpPc1CN2GNhdO0/hSY4YkGEnuLsqJyDd3cIiB1MxuCBJ4ZaqOd2viV1WcP3oU3dxVPm4MWyfYIldMWB14FahScxLhWdRnM9YZ/i9IFcLypXsuz7DjrJPtPUCAwEAAaNmMGQwHQYDVR0OBBYEFP5JzLUawNF+c3AXsYTEWHh7z2czMB8GA1UdIwQYMBaAFP5JzLUawNF+c3AXsYTEWHh7z2czMA4GA1UdDwEB/wQEAwIBBjASBgNVHRMBAf8ECDAGAQH/AgEBMA0GCSqGSIb3DQEBCwUAA4IBAQBc+Be7NDhpE09y7hLPZGRPl1cSKBw4RI0XIv6rlbSTFs5EebpTGjhx/whNxwEZhB9HZ7111Oa1YlT8xkI9DshB78mjAHCKBAJ76moK8tkG0aqdYpJ4ZcJTVBB7l98Rvgc7zfTii7WemTy72deBbSeiEtXavm4EF0mWjHhQ5Nxpnp00Bqn5g1x8CyTDypgmugnep+xG+iFzNmTdsz7WI9T/7kDMXqB7M/FPWBORyS98OJqNDswCLF8bIZYwUBEe+bRHFomoShMzaC3tvim7WCb16noDkSTMlfKO4pnvKhpcVdSgwcruATV7y+W+Lvmz2OT/Gui4JhqeoTewsxndhDDE
///   -----END CERTIFICATE-----
///             """)
///             .name("example_ca_cert")
///             .privateKey("""
///   -----BEGIN PRIVATE KEY-----
///   MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDEXDkcICRU3XBv9hiiPnBWIjgTQyowmVFxDr11mONgZB/cMYjE/OvQjvnpwNcOaSK16MOpAjNbELKRx2lZiVJaLRDCccqCxXwP/CrdRChcqGzo7mbNksMlcidrErb0LlEBKLFC2QjRmRKqB+YOs4TD8WsZu2S667A2fZmjRlaqOxFi1h62ee0P+TLU628UC/nl41JifSt5Evt7hMDHakemdwZblNYr2p6T3NQjdhjYXTtP4UmOGJBhJ7i7Kicg3d3CIgdTMbggSeGWqjndr4ldVnD96FN3cVT5uDFsn2CJXTFgdeBWoUnMS4VnUZzPWGf4vSBXC8qV7Ls+w46yT7T1AgMBAAECggEAQZnp/oqCeNPOR6l5S2L+1tfx0gWjZ78hJVteUpZ0iHSK7F6kKeOxyOird7vUXV0kmo+cJq+0hp0Ke4eam640FCpwKfYoSQ4/R3vgujGWJnaihCN5tv5sMet0XeJPuz5qE7ALoKCvwI6aXLHs20aAeZIDTQJ9QbGSGnJVzOWn+JDTidIgZpN57RpXfSAwnJPTQK/PN8i5z108hsaDOdEgGmxYZ7kYqMqzX20KXmth58LDfPixs5JGtS60iiKC/wOcGzkB2/AdTSojR76oEU77cANP/3zO25NG//whUdYlW0t0d7PgXxIeJe+xgYnamDQJx3qonVyt4H77ha0ObRAj9QKBgQDicZr+VTwFMnELP3a+FXGnjehRiuS1i7MXGKxNweCD+dFlML0FplSQS8Ro2n+d8lu8BBXGx0qm6VXu8Rhn7TAUL6q+PCgfarzxfIhacb/TZCqfieIHsMlVBfhV5HCXnk+kis0tuC/PRArcWTwDHJUJXkBhvkUsNswvQzavDPI7KwKBgQDd/WgLkj7A3X5fgIHZH/GbDSBiXwzKb+rF4ZCT2XFgG/OAW7vapfcX/w+v+5lBLyrocmOAS3PGGAhM5T3HLnUCQfnK4qgps1Lqibkc9Tmnsn60LanUjuUMsYv/zSw70tozbzhJ0pioEpWfRxRZBztO2Rr8Ntm7h6Fk701EXGNAXwKBgQCD1xsjy2J3sCerIdcz0u5qXLAPkeuZW+34m4/ucdwTWwc0gEz9lhsULFj9p4G351zLuiEnq+7mAWLcDJlmIO3mQt6JhiLiL9Y0T4pgBmxmWqKKYtAsJB0EmMY+1BNN44mBRqMxZFTJu1cLdhT/xstrOeoIPqytknYNanfTMZlzIwKBgHrLXe5oq0XMP8dcMneEcAUwsaU4pr6kQd3L9EmUkl5zl7J9C+DaxWAEuwzBw/iGutlxzRB+rD/7szu14wJ29EqXbDGKRzMp+se5/yfBjm7xEZ1hVPw7PwBShfqt57X/4Ktq7lwHnmH6RcGhc+P7WBc5iO/S94YAdIp8xOT3pf9JAoGAE0QkqJUY+5Mgr+fBO0VNV72ZoPveGpW+De59uhKAOnu1zljQCUtk59m6+DXfm0tNYKtawa5n8iN71Zh+s62xXSt3pYi1Y5CCCmv8Y4BhwIcPwXKk3zEvLgSHVTpC0bayA9aSO4bbZgVXa5w+Z0w/vvfp9DWo1IS3EnQRrz6WMYA=
///   -----END PRIVATE KEY-----
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleMtlsCertificate:
///     type: cloudflare:MtlsCertificate
///     name: example_mtls_certificate
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       ca: true
///       certificates: |2
///           -----BEGIN CERTIFICATE-----
///           MIIDmDCCAoCgAwIBAgIUKTOAZNjcXVZRj4oQt0SHsl1c1vMwDQYJKoZIhvcNAQELBQAwUTELMAkGA1UEBhMCVVMxFjAUBgNVBAgMDVNhbiBGcmFuY2lzY28xEzARBgNVBAcMCkNhbGlmb3JuaWExFTATBgNVBAoMDEV4YW1wbGUgSW5jLjAgFw0yMjExMjIxNjU5NDdaGA8yMTIyMTAyOTE2NTk0N1owUTELMAkGA1UEBhMCVVMxFjAUBgNVBAgMDVNhbiBGcmFuY2lzY28xEzARBgNVBAcMCkNhbGlmb3JuaWExFTATBgNVBAoMDEV4YW1wbGUgSW5jLjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMRcORwgJFTdcG/2GKI+cFYiOBNDKjCZUXEOvXWY42BkH9wxiMT869CO+enA1w5pIrXow6kCM1sQspHHaVmJUlotEMJxyoLFfA/8Kt1EKFyobOjuZs2SwyVyJ2sStvQuUQEosULZCNGZEqoH5g6zhMPxaxm7ZLrrsDZ9maNGVqo7EWLWHrZ57Q/5MtTrbxQL+eXjUmJ9K3kS+3uEwMdqR6Z3BluU1ivanpPc1CN2GNhdO0/hSY4YkGEnuLsqJyDd3cIiB1MxuCBJ4ZaqOd2viV1WcP3oU3dxVPm4MWyfYIldMWB14FahScxLhWdRnM9YZ/i9IFcLypXsuz7DjrJPtPUCAwEAAaNmMGQwHQYDVR0OBBYEFP5JzLUawNF+c3AXsYTEWHh7z2czMB8GA1UdIwQYMBaAFP5JzLUawNF+c3AXsYTEWHh7z2czMA4GA1UdDwEB/wQEAwIBBjASBgNVHRMBAf8ECDAGAQH/AgEBMA0GCSqGSIb3DQEBCwUAA4IBAQBc+Be7NDhpE09y7hLPZGRPl1cSKBw4RI0XIv6rlbSTFs5EebpTGjhx/whNxwEZhB9HZ7111Oa1YlT8xkI9DshB78mjAHCKBAJ76moK8tkG0aqdYpJ4ZcJTVBB7l98Rvgc7zfTii7WemTy72deBbSeiEtXavm4EF0mWjHhQ5Nxpnp00Bqn5g1x8CyTDypgmugnep+xG+iFzNmTdsz7WI9T/7kDMXqB7M/FPWBORyS98OJqNDswCLF8bIZYwUBEe+bRHFomoShMzaC3tvim7WCb16noDkSTMlfKO4pnvKhpcVdSgwcruATV7y+W+Lvmz2OT/Gui4JhqeoTewsxndhDDE
///           -----END CERTIFICATE-----
///       name: example_ca_cert
///       privateKey: |2
///           -----BEGIN PRIVATE KEY-----
///           MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDEXDkcICRU3XBv9hiiPnBWIjgTQyowmVFxDr11mONgZB/cMYjE/OvQjvnpwNcOaSK16MOpAjNbELKRx2lZiVJaLRDCccqCxXwP/CrdRChcqGzo7mbNksMlcidrErb0LlEBKLFC2QjRmRKqB+YOs4TD8WsZu2S667A2fZmjRlaqOxFi1h62ee0P+TLU628UC/nl41JifSt5Evt7hMDHakemdwZblNYr2p6T3NQjdhjYXTtP4UmOGJBhJ7i7Kicg3d3CIgdTMbggSeGWqjndr4ldVnD96FN3cVT5uDFsn2CJXTFgdeBWoUnMS4VnUZzPWGf4vSBXC8qV7Ls+w46yT7T1AgMBAAECggEAQZnp/oqCeNPOR6l5S2L+1tfx0gWjZ78hJVteUpZ0iHSK7F6kKeOxyOird7vUXV0kmo+cJq+0hp0Ke4eam640FCpwKfYoSQ4/R3vgujGWJnaihCN5tv5sMet0XeJPuz5qE7ALoKCvwI6aXLHs20aAeZIDTQJ9QbGSGnJVzOWn+JDTidIgZpN57RpXfSAwnJPTQK/PN8i5z108hsaDOdEgGmxYZ7kYqMqzX20KXmth58LDfPixs5JGtS60iiKC/wOcGzkB2/AdTSojR76oEU77cANP/3zO25NG//whUdYlW0t0d7PgXxIeJe+xgYnamDQJx3qonVyt4H77ha0ObRAj9QKBgQDicZr+VTwFMnELP3a+FXGnjehRiuS1i7MXGKxNweCD+dFlML0FplSQS8Ro2n+d8lu8BBXGx0qm6VXu8Rhn7TAUL6q+PCgfarzxfIhacb/TZCqfieIHsMlVBfhV5HCXnk+kis0tuC/PRArcWTwDHJUJXkBhvkUsNswvQzavDPI7KwKBgQDd/WgLkj7A3X5fgIHZH/GbDSBiXwzKb+rF4ZCT2XFgG/OAW7vapfcX/w+v+5lBLyrocmOAS3PGGAhM5T3HLnUCQfnK4qgps1Lqibkc9Tmnsn60LanUjuUMsYv/zSw70tozbzhJ0pioEpWfRxRZBztO2Rr8Ntm7h6Fk701EXGNAXwKBgQCD1xsjy2J3sCerIdcz0u5qXLAPkeuZW+34m4/ucdwTWwc0gEz9lhsULFj9p4G351zLuiEnq+7mAWLcDJlmIO3mQt6JhiLiL9Y0T4pgBmxmWqKKYtAsJB0EmMY+1BNN44mBRqMxZFTJu1cLdhT/xstrOeoIPqytknYNanfTMZlzIwKBgHrLXe5oq0XMP8dcMneEcAUwsaU4pr6kQd3L9EmUkl5zl7J9C+DaxWAEuwzBw/iGutlxzRB+rD/7szu14wJ29EqXbDGKRzMp+se5/yfBjm7xEZ1hVPw7PwBShfqt57X/4Ktq7lwHnmH6RcGhc+P7WBc5iO/S94YAdIp8xOT3pf9JAoGAE0QkqJUY+5Mgr+fBO0VNV72ZoPveGpW+De59uhKAOnu1zljQCUtk59m6+DXfm0tNYKtawa5n8iN71Zh+s62xXSt3pYi1Y5CCCmv8Y4BhwIcPwXKk3zEvLgSHVTpC0bayA9aSO4bbZgVXa5w+Z0w/vvfp9DWo1IS3EnQRrz6WMYA=
///           -----END PRIVATE KEY-----
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/mtlsCertificate:MtlsCertificate example '<account_id>/<mtls_certificate_id>'
/// ```
class MtlsCertificate extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  /// Indicates whether the certificate is a CA or leaf certificate.
  late final pulumi.Output<bool> ca;
  /// The uploaded root CA certificate or certificate chain. Certificates must be provided in PEM format with the certificate matching the privateKey first in the chain.
  late final pulumi.Output<String> certificates;
  /// When the certificate expires.
  late final pulumi.Output<String> expiresOn;
  /// The certificate authority that issued the certificate.
  late final pulumi.Output<String> issuer;
  /// Optional unique name for the certificate. Only used for human readability.
  late final pulumi.Output<String?> name;
  /// The private key for the certificate. This field is only needed for specific use cases such as using a custom certificate with Zero Trust's block page.
  late final pulumi.Output<String?> privateKey;
  /// The certificate serial number.
  late final pulumi.Output<String> serialNumber;
  /// The type of hash used for the certificate.
  late final pulumi.Output<String> signature;
  /// This is the time the certificate was updated.
  late final pulumi.Output<String> updatedAt;
  /// This is the time the certificate was uploaded.
  late final pulumi.Output<String> uploadedOn;

  /// Creates a new [MtlsCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MtlsCertificate]. {@macro pulumi_index_mtls_certificate_mtls_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MtlsCertificate(
    String name, {
    MtlsCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/mtlsCertificate:MtlsCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
          additionalSecretOutputs: const ['privateKey'],
        ) {
    accountId = registerOutput<String>('accountId');
    ca = registerOutput<bool>('ca');
    certificates = registerOutput<String>('certificates');
    expiresOn = registerOutput<String>('expiresOn');
    issuer = registerOutput<String>('issuer');
    this.name = registerOutput<String?>('name');
    privateKey = registerOutput<String?>('privateKey', isSecret: true);
    serialNumber = registerOutput<String>('serialNumber');
    signature = registerOutput<String>('signature');
    updatedAt = registerOutput<String>('updatedAt');
    uploadedOn = registerOutput<String>('uploadedOn');
  }

  /// Gets an existing [MtlsCertificate] resource's state with the given [name] and [id].
  static MtlsCertificate get(
    String name,
    pulumi.Input<String> id, {
    MtlsCertificateState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MtlsCertificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MtlsCertificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/mtlsCertificate:MtlsCertificate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    ca = registerOutput<bool>('ca');
    certificates = registerOutput<String>('certificates');
    expiresOn = registerOutput<String>('expiresOn');
    issuer = registerOutput<String>('issuer');
    this.name = registerOutput<String?>('name');
    privateKey = registerOutput<String?>('privateKey', isSecret: true);
    serialNumber = registerOutput<String>('serialNumber');
    signature = registerOutput<String>('signature');
    updatedAt = registerOutput<String>('updatedAt');
    uploadedOn = registerOutput<String>('uploadedOn');
  }

  /// Creates a typed reference to an existing [MtlsCertificate] resource.
  MtlsCertificate.reference(String urn)
    : super(
        'cloudflare:index/mtlsCertificate:MtlsCertificate',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['privateKey'],
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    ca = registerOutput<bool>('ca');
    certificates = registerOutput<String>('certificates');
    expiresOn = registerOutput<String>('expiresOn');
    issuer = registerOutput<String>('issuer');
    this.name = registerOutput<String?>('name');
    privateKey = registerOutput<String?>('privateKey', isSecret: true);
    serialNumber = registerOutput<String>('serialNumber');
    signature = registerOutput<String>('signature');
    updatedAt = registerOutput<String>('updatedAt');
    uploadedOn = registerOutput<String>('uploadedOn');
  }
}
