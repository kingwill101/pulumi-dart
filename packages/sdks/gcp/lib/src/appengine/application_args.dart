// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_feature_settings.dart';
import 'application_iap.dart';

/// {@template pulumi_appengine_application_application_args_doc}
/// The set of arguments for Application.
/// {@endtemplate}
/// {@macro pulumi_appengine_application_application_args_doc}
class ApplicationArgs {
  /// The domain to authenticate users with when using App Engine's User API.
  final pulumi.Input<String>? authDomain;
  /// The type of the Cloud Firestore or Cloud Datastore database associated with this application.
  /// Can be `CLOUD_FIRESTORE` or `CLOUD_DATASTORE_COMPATIBILITY` for new
  /// instances.  To support old instances, the value `CLOUD_DATASTORE` is accepted by the provider, but will be rejected by the API.
  /// To create a Cloud Firestore database without creating an App Engine application, use the
  /// `gcp.firestore.Database`
  /// resource instead.
  final pulumi.Input<String>? databaseType;
  /// A block of optional settings to configure specific App Engine features:
  final pulumi.Input<ApplicationFeatureSettings>? featureSettings;
  /// Settings for enabling Cloud Identity Aware Proxy
  final pulumi.Input<ApplicationIap>? iap;
  /// The [location](https://cloud.google.com/appengine/docs/locations)
  /// to serve the app from.
  final pulumi.Input<String> locationId;
  /// The project ID to create the application under.
  /// ~>**NOTE:** GCP only accepts project ID, not project number. If you are using number,
  /// you may get a "Permission denied" error.
  final pulumi.Input<String>? project;
  /// The serving status of the app.
  final pulumi.Input<String>? servingStatus;
  /// A list of the SSL policy that will be applied. Each block has a `SSL_POLICY_UNSPECIFIED`, `DEFAULT`, and `MODERN` field.
  final pulumi.Input<String>? sslPolicy;

  /// Creates a new [ApplicationArgs].
  /// [authDomain] The domain to authenticate users with when using App Engine's User API.
  /// [databaseType] The type of the Cloud Firestore or Cloud Datastore database associated with this application.
  /// [featureSettings] A block of optional settings to configure specific App Engine features:
  /// [iap] Settings for enabling Cloud Identity Aware Proxy
  /// [locationId] The [location](https://cloud.google.com/appengine/docs/locations)
  /// [project] The project ID to create the application under.
  /// [servingStatus] The serving status of the app.
  /// [sslPolicy] A list of the SSL policy that will be applied. Each block has a `SSL_POLICY_UNSPECIFIED`, `DEFAULT`, and `MODERN` field.
  ApplicationArgs({
    pulumi.Output<String>? authDomain,
    pulumi.Output<String>? databaseType,
    pulumi.Output<ApplicationFeatureSettings>? featureSettings,
    pulumi.Output<ApplicationIap>? iap,
    required pulumi.Output<String> locationId,
    pulumi.Output<String>? project,
    pulumi.Output<String>? servingStatus,
    pulumi.Output<String>? sslPolicy,
  }) :
      authDomain = pulumi.Input.asOptionalInput<String>(authDomain),
      databaseType = pulumi.Input.asOptionalInput<String>(databaseType),
      featureSettings = pulumi.Input.asOptionalInput<ApplicationFeatureSettings>(featureSettings),
      iap = pulumi.Input.asOptionalInput<ApplicationIap>(iap),
      locationId = pulumi.Input.asInput<String>(locationId),
      project = pulumi.Input.asOptionalInput<String>(project),
      servingStatus = pulumi.Input.asOptionalInput<String>(servingStatus),
      sslPolicy = pulumi.Input.asOptionalInput<String>(sslPolicy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authDomain': ?authDomain,
      'databaseType': ?databaseType,
      'featureSettings': ?pulumi.Input.mapOptionalInputValue<ApplicationFeatureSettings, Map<String, dynamic>>(featureSettings, (value) => value.toMap()),
      'iap': ?pulumi.Input.mapOptionalInputValue<ApplicationIap, Map<String, dynamic>>(iap, (value) => value.toMap()),
      'locationId': locationId,
      'project': ?project,
      'servingStatus': ?servingStatus,
      'sslPolicy': ?sslPolicy,
    };
  }

  factory ApplicationArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs(
      authDomain: map['authDomain'] == null ? null : pulumi.Output.create<String>(map['authDomain'] as String),
      databaseType: map['databaseType'] == null ? null : pulumi.Output.create<String>(map['databaseType'] as String),
      featureSettings: map['featureSettings'] == null ? null : pulumi.Output.create<ApplicationFeatureSettings>(ApplicationFeatureSettings.fromMap((map['featureSettings'] as Map).cast<String, dynamic>())),
      iap: map['iap'] == null ? null : pulumi.Output.create<ApplicationIap>(ApplicationIap.fromMap((map['iap'] as Map).cast<String, dynamic>())),
      locationId: pulumi.Output.create<String>(map['locationId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      servingStatus: map['servingStatus'] == null ? null : pulumi.Output.create<String>(map['servingStatus'] as String),
      sslPolicy: map['sslPolicy'] == null ? null : pulumi.Output.create<String>(map['sslPolicy'] as String),
    );
  }
}

