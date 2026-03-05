import 'package:pulumi/pulumi.dart' as pulumi;
import 'registration_args.dart';
import 'registration_contact_settings.dart';
import 'registration_dns_settings.dart';
import 'registration_management_settings.dart';
import 'registration_state.dart';
import 'registration_yearly_price.dart';

/// ## Example Usage
///
/// ### Clouddomains Registration Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myRegistration = new gcp.clouddomains.Registration("my_registration", {
///     domainName: "example-domain.com",
///     location: "global",
///     labels: {
///         labelkey: "labelvalue",
///     },
///     yearlyPrice: {
///         currencyCode: "USD",
///         units: "12",
///     },
///     dnsSettings: {
///         customDns: {
///             nameServers: [
///                 "ns-cloud-a1.googledomains.com.",
///                 "ns-cloud-a2.googledomains.com.",
///                 "ns-cloud-a3.googledomains.com.",
///                 "ns-cloud-a4.googledomains.com.",
///             ],
///         },
///     },
///     contactSettings: {
///         privacy: "REDACTED_CONTACT_DATA",
///         registrantContact: {
///             phoneNumber: "+12345000000",
///             email: "user@example.com",
///             postalAddress: {
///                 regionCode: "US",
///                 postalCode: "95050",
///                 administrativeArea: "CA",
///                 locality: "Example City",
///                 addressLines: ["1234 Example street"],
///                 recipients: ["example recipient"],
///             },
///         },
///         adminContact: {
///             phoneNumber: "+12345000000",
///             email: "user@example.com",
///             postalAddress: {
///                 regionCode: "US",
///                 postalCode: "95050",
///                 administrativeArea: "CA",
///                 locality: "Example City",
///                 addressLines: ["1234 Example street"],
///                 recipients: ["example recipient"],
///             },
///         },
///         technicalContact: {
///             phoneNumber: "+12345000000",
///             email: "user@example.com",
///             postalAddress: {
///                 regionCode: "US",
///                 postalCode: "95050",
///                 administrativeArea: "CA",
///                 locality: "Example City",
///                 addressLines: ["1234 Example street"],
///                 recipients: ["example recipient"],
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_registration = gcp.clouddomains.Registration("my_registration",
///     domain_name="example-domain.com",
///     location="global",
///     labels={
///         "labelkey": "labelvalue",
///     },
///     yearly_price={
///         "currency_code": "USD",
///         "units": "12",
///     },
///     dns_settings={
///         "custom_dns": {
///             "name_servers": [
///                 "ns-cloud-a1.googledomains.com.",
///                 "ns-cloud-a2.googledomains.com.",
///                 "ns-cloud-a3.googledomains.com.",
///                 "ns-cloud-a4.googledomains.com.",
///             ],
///         },
///     },
///     contact_settings={
///         "privacy": "REDACTED_CONTACT_DATA",
///         "registrant_contact": {
///             "phone_number": "+12345000000",
///             "email": "user@example.com",
///             "postal_address": {
///                 "region_code": "US",
///                 "postal_code": "95050",
///                 "administrative_area": "CA",
///                 "locality": "Example City",
///                 "address_lines": ["1234 Example street"],
///                 "recipients": ["example recipient"],
///             },
///         },
///         "admin_contact": {
///             "phone_number": "+12345000000",
///             "email": "user@example.com",
///             "postal_address": {
///                 "region_code": "US",
///                 "postal_code": "95050",
///                 "administrative_area": "CA",
///                 "locality": "Example City",
///                 "address_lines": ["1234 Example street"],
///                 "recipients": ["example recipient"],
///             },
///         },
///         "technical_contact": {
///             "phone_number": "+12345000000",
///             "email": "user@example.com",
///             "postal_address": {
///                 "region_code": "US",
///                 "postal_code": "95050",
///                 "administrative_area": "CA",
///                 "locality": "Example City",
///                 "address_lines": ["1234 Example street"],
///                 "recipients": ["example recipient"],
///             },
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myRegistration = new Gcp.CloudDomains.Registration("my_registration", new()
///     {
///         DomainName = "example-domain.com",
///         Location = "global",
///         Labels =
///         {
///             { "labelkey", "labelvalue" },
///         },
///         YearlyPrice = new Gcp.CloudDomains.Inputs.RegistrationYearlyPriceArgs
///         {
///             CurrencyCode = "USD",
///             Units = "12",
///         },
///         DnsSettings = new Gcp.CloudDomains.Inputs.RegistrationDnsSettingsArgs
///         {
///             CustomDns = new Gcp.CloudDomains.Inputs.RegistrationDnsSettingsCustomDnsArgs
///             {
///                 NameServers = new[]
///                 {
///                     "ns-cloud-a1.googledomains.com.",
///                     "ns-cloud-a2.googledomains.com.",
///                     "ns-cloud-a3.googledomains.com.",
///                     "ns-cloud-a4.googledomains.com.",
///                 },
///             },
///         },
///         ContactSettings = new Gcp.CloudDomains.Inputs.RegistrationContactSettingsArgs
///         {
///             Privacy = "REDACTED_CONTACT_DATA",
///             RegistrantContact = new Gcp.CloudDomains.Inputs.RegistrationContactSettingsRegistrantContactArgs
///             {
///                 PhoneNumber = "+12345000000",
///                 Email = "user@example.com",
///                 PostalAddress = new Gcp.CloudDomains.Inputs.RegistrationContactSettingsRegistrantContactPostalAddressArgs
///                 {
///                     RegionCode = "US",
///                     PostalCode = "95050",
///                     AdministrativeArea = "CA",
///                     Locality = "Example City",
///                     AddressLines = new[]
///                     {
///                         "1234 Example street",
///                     },
///                     Recipients = new[]
///                     {
///                         "example recipient",
///                     },
///                 },
///             },
///             AdminContact = new Gcp.CloudDomains.Inputs.RegistrationContactSettingsAdminContactArgs
///             {
///                 PhoneNumber = "+12345000000",
///                 Email = "user@example.com",
///                 PostalAddress = new Gcp.CloudDomains.Inputs.RegistrationContactSettingsAdminContactPostalAddressArgs
///                 {
///                     RegionCode = "US",
///                     PostalCode = "95050",
///                     AdministrativeArea = "CA",
///                     Locality = "Example City",
///                     AddressLines = new[]
///                     {
///                         "1234 Example street",
///                     },
///                     Recipients = new[]
///                     {
///                         "example recipient",
///                     },
///                 },
///             },
///             TechnicalContact = new Gcp.CloudDomains.Inputs.RegistrationContactSettingsTechnicalContactArgs
///             {
///                 PhoneNumber = "+12345000000",
///                 Email = "user@example.com",
///                 PostalAddress = new Gcp.CloudDomains.Inputs.RegistrationContactSettingsTechnicalContactPostalAddressArgs
///                 {
///                     RegionCode = "US",
///                     PostalCode = "95050",
///                     AdministrativeArea = "CA",
///                     Locality = "Example City",
///                     AddressLines = new[]
///                     {
///                         "1234 Example street",
///                     },
///                     Recipients = new[]
///                     {
///                         "example recipient",
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/clouddomains"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := clouddomains.NewRegistration(ctx, "my_registration", &clouddomains.RegistrationArgs{
/// 			DomainName: pulumi.String("example-domain.com"),
/// 			Location:   pulumi.String("global"),
/// 			Labels: pulumi.StringMap{
/// 				"labelkey": pulumi.String("labelvalue"),
/// 			},
/// 			YearlyPrice: &clouddomains.RegistrationYearlyPriceArgs{
/// 				CurrencyCode: pulumi.String("USD"),
/// 				Units:        pulumi.String("12"),
/// 			},
/// 			DnsSettings: &clouddomains.RegistrationDnsSettingsArgs{
/// 				CustomDns: &clouddomains.RegistrationDnsSettingsCustomDnsArgs{
/// 					NameServers: pulumi.StringArray{
/// 						pulumi.String("ns-cloud-a1.googledomains.com."),
/// 						pulumi.String("ns-cloud-a2.googledomains.com."),
/// 						pulumi.String("ns-cloud-a3.googledomains.com."),
/// 						pulumi.String("ns-cloud-a4.googledomains.com."),
/// 					},
/// 				},
/// 			},
/// 			ContactSettings: &clouddomains.RegistrationContactSettingsArgs{
/// 				Privacy: pulumi.String("REDACTED_CONTACT_DATA"),
/// 				RegistrantContact: &clouddomains.RegistrationContactSettingsRegistrantContactArgs{
/// 					PhoneNumber: pulumi.String("+12345000000"),
/// 					Email:       pulumi.String("user@example.com"),
/// 					PostalAddress: &clouddomains.RegistrationContactSettingsRegistrantContactPostalAddressArgs{
/// 						RegionCode:         pulumi.String("US"),
/// 						PostalCode:         pulumi.String("95050"),
/// 						AdministrativeArea: pulumi.String("CA"),
/// 						Locality:           pulumi.String("Example City"),
/// 						AddressLines: pulumi.StringArray{
/// 							pulumi.String("1234 Example street"),
/// 						},
/// 						Recipients: pulumi.StringArray{
/// 							pulumi.String("example recipient"),
/// 						},
/// 					},
/// 				},
/// 				AdminContact: &clouddomains.RegistrationContactSettingsAdminContactArgs{
/// 					PhoneNumber: pulumi.String("+12345000000"),
/// 					Email:       pulumi.String("user@example.com"),
/// 					PostalAddress: &clouddomains.RegistrationContactSettingsAdminContactPostalAddressArgs{
/// 						RegionCode:         pulumi.String("US"),
/// 						PostalCode:         pulumi.String("95050"),
/// 						AdministrativeArea: pulumi.String("CA"),
/// 						Locality:           pulumi.String("Example City"),
/// 						AddressLines: pulumi.StringArray{
/// 							pulumi.String("1234 Example street"),
/// 						},
/// 						Recipients: pulumi.StringArray{
/// 							pulumi.String("example recipient"),
/// 						},
/// 					},
/// 				},
/// 				TechnicalContact: &clouddomains.RegistrationContactSettingsTechnicalContactArgs{
/// 					PhoneNumber: pulumi.String("+12345000000"),
/// 					Email:       pulumi.String("user@example.com"),
/// 					PostalAddress: &clouddomains.RegistrationContactSettingsTechnicalContactPostalAddressArgs{
/// 						RegionCode:         pulumi.String("US"),
/// 						PostalCode:         pulumi.String("95050"),
/// 						AdministrativeArea: pulumi.String("CA"),
/// 						Locality:           pulumi.String("Example City"),
/// 						AddressLines: pulumi.StringArray{
/// 							pulumi.String("1234 Example street"),
/// 						},
/// 						Recipients: pulumi.StringArray{
/// 							pulumi.String("example recipient"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.clouddomains.Registration;
/// import com.pulumi.gcp.clouddomains.RegistrationArgs;
/// import com.pulumi.gcp.clouddomains.inputs.RegistrationYearlyPriceArgs;
/// import com.pulumi.gcp.clouddomains.inputs.RegistrationDnsSettingsArgs;
/// import com.pulumi.gcp.clouddomains.inputs.RegistrationDnsSettingsCustomDnsArgs;
/// import com.pulumi.gcp.clouddomains.inputs.RegistrationContactSettingsArgs;
/// import com.pulumi.gcp.clouddomains.inputs.RegistrationContactSettingsRegistrantContactArgs;
/// import com.pulumi.gcp.clouddomains.inputs.RegistrationContactSettingsRegistrantContactPostalAddressArgs;
/// import com.pulumi.gcp.clouddomains.inputs.RegistrationContactSettingsAdminContactArgs;
/// import com.pulumi.gcp.clouddomains.inputs.RegistrationContactSettingsAdminContactPostalAddressArgs;
/// import com.pulumi.gcp.clouddomains.inputs.RegistrationContactSettingsTechnicalContactArgs;
/// import com.pulumi.gcp.clouddomains.inputs.RegistrationContactSettingsTechnicalContactPostalAddressArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var myRegistration = new Registration("myRegistration", RegistrationArgs.builder()
///             .domainName("example-domain.com")
///             .location("global")
///             .labels(Map.of("labelkey", "labelvalue"))
///             .yearlyPrice(RegistrationYearlyPriceArgs.builder()
///                 .currencyCode("USD")
///                 .units("12")
///                 .build())
///             .dnsSettings(RegistrationDnsSettingsArgs.builder()
///                 .customDns(RegistrationDnsSettingsCustomDnsArgs.builder()
///                     .nameServers(
///                         "ns-cloud-a1.googledomains.com.",
///                         "ns-cloud-a2.googledomains.com.",
///                         "ns-cloud-a3.googledomains.com.",
///                         "ns-cloud-a4.googledomains.com.")
///                     .build())
///                 .build())
///             .contactSettings(RegistrationContactSettingsArgs.builder()
///                 .privacy("REDACTED_CONTACT_DATA")
///                 .registrantContact(RegistrationContactSettingsRegistrantContactArgs.builder()
///                     .phoneNumber("+12345000000")
///                     .email("user@example.com")
///                     .postalAddress(RegistrationContactSettingsRegistrantContactPostalAddressArgs.builder()
///                         .regionCode("US")
///                         .postalCode("95050")
///                         .administrativeArea("CA")
///                         .locality("Example City")
///                         .addressLines("1234 Example street")
///                         .recipients("example recipient")
///                         .build())
///                     .build())
///                 .adminContact(RegistrationContactSettingsAdminContactArgs.builder()
///                     .phoneNumber("+12345000000")
///                     .email("user@example.com")
///                     .postalAddress(RegistrationContactSettingsAdminContactPostalAddressArgs.builder()
///                         .regionCode("US")
///                         .postalCode("95050")
///                         .administrativeArea("CA")
///                         .locality("Example City")
///                         .addressLines("1234 Example street")
///                         .recipients("example recipient")
///                         .build())
///                     .build())
///                 .technicalContact(RegistrationContactSettingsTechnicalContactArgs.builder()
///                     .phoneNumber("+12345000000")
///                     .email("user@example.com")
///                     .postalAddress(RegistrationContactSettingsTechnicalContactPostalAddressArgs.builder()
///                         .regionCode("US")
///                         .postalCode("95050")
///                         .administrativeArea("CA")
///                         .locality("Example City")
///                         .addressLines("1234 Example street")
///                         .recipients("example recipient")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myRegistration:
///     type: gcp:clouddomains:Registration
///     name: my_registration
///     properties:
///       domainName: example-domain.com
///       location: global
///       labels:
///         labelkey: labelvalue
///       yearlyPrice:
///         currencyCode: USD
///         units: 12
///       dnsSettings:
///         customDns:
///           nameServers:
///             - ns-cloud-a1.googledomains.com.
///             - ns-cloud-a2.googledomains.com.
///             - ns-cloud-a3.googledomains.com.
///             - ns-cloud-a4.googledomains.com.
///       contactSettings:
///         privacy: REDACTED_CONTACT_DATA
///         registrantContact:
///           phoneNumber: '+12345000000'
///           email: user@example.com
///           postalAddress:
///             regionCode: US
///             postalCode: '95050'
///             administrativeArea: CA
///             locality: Example City
///             addressLines:
///               - 1234 Example street
///             recipients:
///               - example recipient
///         adminContact:
///           phoneNumber: '+12345000000'
///           email: user@example.com
///           postalAddress:
///             regionCode: US
///             postalCode: '95050'
///             administrativeArea: CA
///             locality: Example City
///             addressLines:
///               - 1234 Example street
///             recipients:
///               - example recipient
///         technicalContact:
///           phoneNumber: '+12345000000'
///           email: user@example.com
///           postalAddress:
///             regionCode: US
///             postalCode: '95050'
///             administrativeArea: CA
///             locality: Example City
///             addressLines:
///               - 1234 Example street
///             recipients:
///               - example recipient
/// ```
///
///
/// ## Import
///
/// Registration can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/registrations/{{domain_name}}`
///
/// * `{{project}}/{{location}}/{{domain_name}}`
///
/// * `{{location}}/{{domain_name}}`
///
/// When using the `pulumi import` command, Registration can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:clouddomains/registration:Registration default projects/{{project}}/locations/{{location}}/registrations/{{domain_name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:clouddomains/registration:Registration default {{project}}/{{location}}/{{domain_name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:clouddomains/registration:Registration default {{location}}/{{domain_name}}
/// ```
class Registration extends pulumi.CustomResource {
  /// The list of contact notices that the caller acknowledges. Possible value is PUBLIC_CONTACT_DATA_ACKNOWLEDGEMENT
  late final pulumi.Output<List<String>?> contactNotices;
  /// Required. Settings for contact information linked to the Registration.
  /// Structure is documented below.
  late final pulumi.Output<RegistrationContactSettings> contactSettings;
  /// Output only. Time at which the automation was created.
  late final pulumi.Output<String> createTime;
  /// Settings controlling the DNS configuration of the Registration.
  /// Structure is documented below.
  late final pulumi.Output<RegistrationDnsSettings?> dnsSettings;
  /// Required. The domain name. Unicode domain names must be expressed in Punycode format.
  late final pulumi.Output<String> domainName;
  /// The list of domain notices that you acknowledge. Possible value is HSTS_PRELOADED
  late final pulumi.Output<List<String>?> domainNotices;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Output only. Time at which the automation was updated.
  late final pulumi.Output<String> expireTime;
  /// Output only. The set of issues with the Registration that require attention.
  late final pulumi.Output<List<String>> issues;
  /// Set of labels associated with the Registration.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location for the resource
  late final pulumi.Output<String> location;
  /// Settings for management of the Registration, including renewal, billing, and transfer
  /// Structure is documented below.
  late final pulumi.Output<RegistrationManagementSettings> managementSettings;
  /// Output only. Name of the Registration resource, in the format projects/*/locations/*/registrations/&lt;domain_name&gt;.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Output only. The reason the domain registration failed. Only set for domains in REGISTRATION_FAILED state.
  late final pulumi.Output<String> registerFailureReason;
  /// Output only. The current state of the Registration.
  late final pulumi.Output<String> state;
  /// Output only. Set of options for the contactSettings.privacy field that this Registration supports.
  late final pulumi.Output<List<String>> supportedPrivacies;
  /// Required. Yearly price to register or renew the domain. The value that should be put here can be obtained from
  /// registrations.retrieveRegisterParameters or registrations.searchDomains calls.
  /// Structure is documented below.
  late final pulumi.Output<RegistrationYearlyPrice> yearlyPrice;

  /// Creates a new [Registration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Registration]. {@macro pulumi_clouddomains_registration_registration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Registration(
    String name, {
    RegistrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:clouddomains/registration:Registration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    contactNotices = registerOutput<List<String>?>('contactNotices');
    contactSettings = registerOutput<RegistrationContactSettings>('contactSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistrationContactSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    dnsSettings = registerOutput<RegistrationDnsSettings?>('dnsSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistrationDnsSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    domainName = registerOutput<String>('domainName');
    domainNotices = registerOutput<List<String>?>('domainNotices');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    expireTime = registerOutput<String>('expireTime');
    issues = registerOutput<List<String>>('issues');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    managementSettings = registerOutput<RegistrationManagementSettings>('managementSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistrationManagementSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    registerFailureReason = registerOutput<String>('registerFailureReason');
    state = registerOutput<String>('state');
    supportedPrivacies = registerOutput<List<String>>('supportedPrivacies');
    yearlyPrice = registerOutput<RegistrationYearlyPrice>('yearlyPrice', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistrationYearlyPrice.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Registration] resource's state with the given [name] and [id].
  static Registration get(
    String name,
    pulumi.Input<String> id, {
    RegistrationState? state,
  }) {
    return Registration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Registration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:clouddomains/registration:Registration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    contactNotices = registerOutput<List<String>?>('contactNotices');
    contactSettings = registerOutput<RegistrationContactSettings>('contactSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistrationContactSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    dnsSettings = registerOutput<RegistrationDnsSettings?>('dnsSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistrationDnsSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    domainName = registerOutput<String>('domainName');
    domainNotices = registerOutput<List<String>?>('domainNotices');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    expireTime = registerOutput<String>('expireTime');
    issues = registerOutput<List<String>>('issues');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    managementSettings = registerOutput<RegistrationManagementSettings>('managementSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistrationManagementSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    registerFailureReason = registerOutput<String>('registerFailureReason');
    this.state = registerOutput<String>('state');
    supportedPrivacies = registerOutput<List<String>>('supportedPrivacies');
    yearlyPrice = registerOutput<RegistrationYearlyPrice>('yearlyPrice', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistrationYearlyPrice.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
