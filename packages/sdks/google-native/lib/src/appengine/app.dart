import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_args.dart';
import 'feature_settings_response.dart';
import 'identity_aware_proxy_response.dart';

/// Creates an App Engine application for a Google Cloud Platform project. Required fields: id - The ID of the target Cloud Platform project. location - The region (https://cloud.google.com/appengine/docs/locations) where you want the App Engine application located.For more information about App Engine applications, see Managing Projects, Applications, and Billing (https://cloud.google.com/appengine/docs/standard/python/console/).
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class App extends pulumi.CustomResource {
  /// Google Apps authentication domain that controls which users can access this application.Defaults to open access for any Google Account.
  late final pulumi.Output<String> authDomain;

  /// Google Cloud Storage bucket that can be used for storing files associated with this application. This bucket is associated with the application and can be used by the gcloud deployment commands.
  late final pulumi.Output<String> codeBucket;

  /// The type of the Cloud Firestore or Cloud Datastore database associated with this application.
  late final pulumi.Output<String> databaseType;

  /// Google Cloud Storage bucket that can be used by this application to store content.
  late final pulumi.Output<String> defaultBucket;

  /// Cookie expiration policy for this application.
  late final pulumi.Output<String> defaultCookieExpiration;

  /// Hostname used to reach this application, as resolved by App Engine.
  late final pulumi.Output<String> defaultHostname;

  /// HTTP path dispatch rules for requests to the application that do not explicitly target a service or version. Rules are order-dependent. Up to 20 dispatch rules can be supported.
  late final pulumi.Output<List<Map<String, dynamic>>> dispatchRules;

  /// The feature specific settings to be used in the application.
  late final pulumi.Output<FeatureSettingsResponse> featureSettings;

  /// The Google Container Registry domain used for storing managed build docker images for this application.
  late final pulumi.Output<String> gcrDomain;

  /// Additional Google Generated Customer Metadata, this field won't be provided by default and can be requested by setting the IncludeExtraData field in GetApplicationRequest
  late final pulumi.Output<Map<String, String>> generatedCustomerMetadata;
  late final pulumi.Output<IdentityAwareProxyResponse> iap;

  /// Location from which this application runs. Application instances run out of the data centers in the specified location, which is also where all of the application's end user content is stored.Defaults to us-central.View the list of supported locations (https://cloud.google.com/appengine/docs/locations).
  late final pulumi.Output<String> location;

  /// Full path to the Application resource in the API. Example: apps/myapp.
  late final pulumi.Output<String> name;

  /// The service account associated with the application. This is the app-level default identity. If no identity provided during create version, Admin API will fallback to this one.
  late final pulumi.Output<String> serviceAccount;

  /// Serving status of this application.
  late final pulumi.Output<String> servingStatus;

  /// Creates a new [App].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [App]. {@macro pulumi_appengine_v1_app_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  App(String name, {AppArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:appengine/v1:App',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    authDomain = registerOutput<String>('authDomain');
    codeBucket = registerOutput<String>('codeBucket');
    databaseType = registerOutput<String>('databaseType');
    defaultBucket = registerOutput<String>('defaultBucket');
    defaultCookieExpiration = registerOutput<String>('defaultCookieExpiration');
    defaultHostname = registerOutput<String>('defaultHostname');
    dispatchRules = registerOutput<List<Map<String, dynamic>>>('dispatchRules');
    featureSettings = registerOutput<FeatureSettingsResponse>(
      'featureSettings',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return FeatureSettingsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    gcrDomain = registerOutput<String>('gcrDomain');
    generatedCustomerMetadata = registerOutput<Map<String, String>>(
      'generatedCustomerMetadata',
    );
    iap = registerOutput<IdentityAwareProxyResponse>(
      'iap',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return IdentityAwareProxyResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    serviceAccount = registerOutput<String>('serviceAccount');
    servingStatus = registerOutput<String>('servingStatus');
  }
}
