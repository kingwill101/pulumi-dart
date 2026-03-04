import 'package:pulumi/pulumi.dart' as pulumi;
import 'actor_response_cloudsupport_v2beta.dart';
import 'case_classification_response_cloudsupport_v2beta.dart';
import 'case_cloudsupport_v2beta_args.dart';

/// Create a new case and associate it with a parent. It must have the following fields set: `display_name`, `description`, `classification`, and `priority`. If you're just testing the API and don't want to route your case to an agent, set `testCase=true`. EXAMPLES: cURL: ```shell parent="projects/some-project" curl \ --request POST \ --header "Authorization: Bearer $(gcloud auth print-access-token)" \ --header 'Content-Type: application/json' \ --data '{ "display_name": "Test case created by me.", "description": "a random test case, feel free to close", "classification": { "id": "100IK2AKCLHMGRJ9CDGMOCGP8DM6UTB4BT262T31BT1M2T31DHNMENPO6KS36CPJ786L2TBFEHGN6NPI64R3CDHN8880G08I1H3MURR7DHII0GRCDTQM8" }, "time_zone": "-07:00", "subscriber_email_addresses": [ "foo@domain.com", "bar@domain.com" ], "testCase": true, "priority": "P3" }' \ "https://cloudsupport.googleapis.com/v2/$parent/cases" ``` Python: ```python import googleapiclient.discovery api_version = "v2" supportApiService = googleapiclient.discovery.build( serviceName="cloudsupport", version=api_version, discoveryServiceUrl=f"https://cloudsupport.googleapis.com/$discovery/rest?version={api_version}", ) request = supportApiService.cases().create( parent="projects/some-project", body={ "displayName": "A Test Case", "description": "This is a test case.", "testCase": True, "priority": "P2", "classification": { "id": "100IK2AKCLHMGRJ9CDGMOCGP8DM6UTB4BT262T31BT1M2T31DHNMENPO6KS36CPJ786L2TBFEHGN6NPI64R3CDHN8880G08I1H3MURR7DHII0GRCDTQM8" }, }, ) print(request.execute()) ```
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class CaseCloudsupportV2beta extends pulumi.CustomResource {
  /// The issue classification applicable to this case.
  late final pulumi.Output<CaseClassificationResponseCloudsupportV2beta>
  classification;

  /// A user-supplied email address to send case update notifications for. This should only be used in BYOID flows, where we cannot infer the user's email address directly from their EUCs.
  late final pulumi.Output<String> contactEmail;

  /// The time this case was created.
  late final pulumi.Output<String> createTime;

  /// The user who created the case. Note: The name and email will be obfuscated if the case was created by Google Support.
  late final pulumi.Output<ActorResponseCloudsupportV2beta> creator;

  /// A broad description of the issue.
  late final pulumi.Output<String> description;

  /// The short summary of the issue reported in this case.
  late final pulumi.Output<String> displayName;

  /// Whether the case is currently escalated.
  late final pulumi.Output<bool> escalated;

  /// The language the user has requested to receive support in. This should be a BCP 47 language code (e.g., `"en"`, `"zh-CN"`, `"zh-TW"`, `"ja"`, `"ko"`). If no language or an unsupported language is specified, this field defaults to English (en). Language selection during case creation may affect your available support options. For a list of supported languages and their support working hours, see: https://cloud.google.com/support/docs/language-working-hours
  late final pulumi.Output<String> languageCode;

  /// The resource name for the case.
  late final pulumi.Output<String> name;

  /// The priority of this case.
  late final pulumi.Output<String> priority;

  /// REMOVED. The severity of this case. Use priority instead.
  late final pulumi.Output<String> severity;

  /// The current status of the support case.
  late final pulumi.Output<String> state;

  /// The email addresses to receive updates on this case.
  late final pulumi.Output<List<String>> subscriberEmailAddresses;

  /// Whether this case was created for internal API testing and should not be acted on by the support team.
  late final pulumi.Output<bool> testCase;

  /// The timezone of the user who created the support case. It should be in a format IANA recognizes: https://www.iana.org/time-zones. There is no additional validation done by the API.
  late final pulumi.Output<String> timeZone;

  /// The time this case was last updated.
  late final pulumi.Output<String> updateTime;
  late final pulumi.Output<String> v2betaId1;
  late final pulumi.Output<String> v2betumId;

  /// Creates a new [CaseCloudsupportV2beta].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CaseCloudsupportV2beta]. {@macro pulumi_cloudsupport_v2beta_case_cloudsupport_v2beta_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CaseCloudsupportV2beta(
    String name, {
    CaseCloudsupportV2betaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:cloudsupport/v2beta:Case',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    classification =
        registerOutput<CaseClassificationResponseCloudsupportV2beta>(
          'classification',
        );
    contactEmail = registerOutput<String>('contactEmail');
    createTime = registerOutput<String>('createTime');
    creator = registerOutput<ActorResponseCloudsupportV2beta>('creator');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    escalated = registerOutput<bool>('escalated');
    languageCode = registerOutput<String>('languageCode');
    this.name = registerOutput<String>('name');
    priority = registerOutput<String>('priority');
    severity = registerOutput<String>('severity');
    state = registerOutput<String>('state');
    subscriberEmailAddresses = registerOutput<List<String>>(
      'subscriberEmailAddresses',
    );
    testCase = registerOutput<bool>('testCase');
    timeZone = registerOutput<String>('timeZone');
    updateTime = registerOutput<String>('updateTime');
    v2betaId1 = registerOutput<String>('v2betaId1');
    v2betumId = registerOutput<String>('v2betumId');
  }
}
