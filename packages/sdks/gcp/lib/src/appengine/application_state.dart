// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_feature_settings.dart';
import 'application_iap.dart';
import 'application_url_dispatch_rule.dart';

/// Input properties used for looking up and filtering Application resources.
class ApplicationState {
  /// Identifier of the app, usually `{PROJECT_ID}`
  final pulumi.Input<String>? appId;
  /// The domain to authenticate users with when using App Engine's User API.
  final pulumi.Input<String>? authDomain;
  /// The GCS bucket code is being stored in for this app.
  final pulumi.Input<String>? codeBucket;
  /// The type of the Cloud Firestore or Cloud Datastore database associated with this application.
  /// Can be `CLOUD_FIRESTORE` or `CLOUD_DATASTORE_COMPATIBILITY` for new
  /// instances.  To support old instances, the value `CLOUD_DATASTORE` is accepted by the provider, but will be rejected by the API.
  /// To create a Cloud Firestore database without creating an App Engine application, use the
  /// `gcp.firestore.Database`
  /// resource instead.
  final pulumi.Input<String>? databaseType;
  /// The GCS bucket content is being stored in for this app.
  final pulumi.Input<String>? defaultBucket;
  /// The default hostname for this app.
  final pulumi.Input<String>? defaultHostname;
  /// A block of optional settings to configure specific App Engine features:
  final pulumi.Input<ApplicationFeatureSettings>? featureSettings;
  /// The GCR domain used for storing managed Docker images for this app.
  final pulumi.Input<String>? gcrDomain;
  /// Settings for enabling Cloud Identity Aware Proxy
  final pulumi.Input<ApplicationIap>? iap;
  /// The [location](https://cloud.google.com/appengine/docs/locations)
  /// to serve the app from.
  final pulumi.Input<String>? locationId;
  /// Unique name of the app, usually `apps/{PROJECT_ID}`
  final pulumi.Input<String>? name;
  /// The project ID to create the application under.
  /// ~>**NOTE:** GCP only accepts project ID, not project number. If you are using number,
  /// you may get a "Permission denied" error.
  final pulumi.Input<String>? project;
  /// The serving status of the app.
  final pulumi.Input<String>? servingStatus;
  /// A list of the SSL policy that will be applied. Each block has a `SSL_POLICY_UNSPECIFIED`, `DEFAULT`, and `MODERN` field.
  final pulumi.Input<String>? sslPolicy;
  /// A list of dispatch rule blocks. Each block has a `domain`, `path`, and `service` field.
  final pulumi.Input<List<ApplicationUrlDispatchRule>>? urlDispatchRules;

  /// Creates a new [ApplicationState].
  /// [appId] Identifier of the app, usually `{PROJECT_ID}`
  /// [authDomain] The domain to authenticate users with when using App Engine's User API.
  /// [codeBucket] The GCS bucket code is being stored in for this app.
  /// [databaseType] The type of the Cloud Firestore or Cloud Datastore database associated with this application.
  /// [defaultBucket] The GCS bucket content is being stored in for this app.
  /// [defaultHostname] The default hostname for this app.
  /// [featureSettings] A block of optional settings to configure specific App Engine features:
  /// [gcrDomain] The GCR domain used for storing managed Docker images for this app.
  /// [iap] Settings for enabling Cloud Identity Aware Proxy
  /// [locationId] The [location](https://cloud.google.com/appengine/docs/locations)
  /// [name] Unique name of the app, usually `apps/{PROJECT_ID}`
  /// [project] The project ID to create the application under.
  /// [servingStatus] The serving status of the app.
  /// [sslPolicy] A list of the SSL policy that will be applied. Each block has a `SSL_POLICY_UNSPECIFIED`, `DEFAULT`, and `MODERN` field.
  /// [urlDispatchRules] A list of dispatch rule blocks. Each block has a `domain`, `path`, and `service` field.
  ApplicationState({
    pulumi.Output<String>? appId,
    pulumi.Output<String>? authDomain,
    pulumi.Output<String>? codeBucket,
    pulumi.Output<String>? databaseType,
    pulumi.Output<String>? defaultBucket,
    pulumi.Output<String>? defaultHostname,
    pulumi.Output<ApplicationFeatureSettings>? featureSettings,
    pulumi.Output<String>? gcrDomain,
    pulumi.Output<ApplicationIap>? iap,
    pulumi.Output<String>? locationId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? servingStatus,
    pulumi.Output<String>? sslPolicy,
    pulumi.Output<List<ApplicationUrlDispatchRule>>? urlDispatchRules,
  }) :
      appId = pulumi.Input.asOptionalInput<String>(appId),
      authDomain = pulumi.Input.asOptionalInput<String>(authDomain),
      codeBucket = pulumi.Input.asOptionalInput<String>(codeBucket),
      databaseType = pulumi.Input.asOptionalInput<String>(databaseType),
      defaultBucket = pulumi.Input.asOptionalInput<String>(defaultBucket),
      defaultHostname = pulumi.Input.asOptionalInput<String>(defaultHostname),
      featureSettings = pulumi.Input.asOptionalInput<ApplicationFeatureSettings>(featureSettings),
      gcrDomain = pulumi.Input.asOptionalInput<String>(gcrDomain),
      iap = pulumi.Input.asOptionalInput<ApplicationIap>(iap),
      locationId = pulumi.Input.asOptionalInput<String>(locationId),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      servingStatus = pulumi.Input.asOptionalInput<String>(servingStatus),
      sslPolicy = pulumi.Input.asOptionalInput<String>(sslPolicy),
      urlDispatchRules = pulumi.Input.asOptionalInput<List<ApplicationUrlDispatchRule>>(urlDispatchRules);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'authDomain': ?authDomain,
      'codeBucket': ?codeBucket,
      'databaseType': ?databaseType,
      'defaultBucket': ?defaultBucket,
      'defaultHostname': ?defaultHostname,
      'featureSettings': ?pulumi.Input.mapOptionalInputValue<ApplicationFeatureSettings, Map<String, dynamic>>(featureSettings, (value) => value.toMap()),
      'gcrDomain': ?gcrDomain,
      'iap': ?pulumi.Input.mapOptionalInputValue<ApplicationIap, Map<String, dynamic>>(iap, (value) => value.toMap()),
      'locationId': ?locationId,
      'name': ?name,
      'project': ?project,
      'servingStatus': ?servingStatus,
      'sslPolicy': ?sslPolicy,
      'urlDispatchRules': ?pulumi.Input.mapOptionalInputValue<List<ApplicationUrlDispatchRule>, List<Map<String, dynamic>>>(urlDispatchRules, (value) => pulumi.Input.encodeList<ApplicationUrlDispatchRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ApplicationState.fromMap(Map<String, dynamic> map) {
    return ApplicationState(
      appId: map['appId'] == null ? null : pulumi.Output.create<String>(map['appId'] as String),
      authDomain: map['authDomain'] == null ? null : pulumi.Output.create<String>(map['authDomain'] as String),
      codeBucket: map['codeBucket'] == null ? null : pulumi.Output.create<String>(map['codeBucket'] as String),
      databaseType: map['databaseType'] == null ? null : pulumi.Output.create<String>(map['databaseType'] as String),
      defaultBucket: map['defaultBucket'] == null ? null : pulumi.Output.create<String>(map['defaultBucket'] as String),
      defaultHostname: map['defaultHostname'] == null ? null : pulumi.Output.create<String>(map['defaultHostname'] as String),
      featureSettings: map['featureSettings'] == null ? null : pulumi.Output.create<ApplicationFeatureSettings>(ApplicationFeatureSettings.fromMap((map['featureSettings'] as Map).cast<String, dynamic>())),
      gcrDomain: map['gcrDomain'] == null ? null : pulumi.Output.create<String>(map['gcrDomain'] as String),
      iap: map['iap'] == null ? null : pulumi.Output.create<ApplicationIap>(ApplicationIap.fromMap((map['iap'] as Map).cast<String, dynamic>())),
      locationId: map['locationId'] == null ? null : pulumi.Output.create<String>(map['locationId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      servingStatus: map['servingStatus'] == null ? null : pulumi.Output.create<String>(map['servingStatus'] as String),
      sslPolicy: map['sslPolicy'] == null ? null : pulumi.Output.create<String>(map['sslPolicy'] as String),
      urlDispatchRules: map['urlDispatchRules'] == null ? null : pulumi.Output.create<List<ApplicationUrlDispatchRule>>(pulumi.Input.decodeList<ApplicationUrlDispatchRule>(map['urlDispatchRules'], (value) => ApplicationUrlDispatchRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

