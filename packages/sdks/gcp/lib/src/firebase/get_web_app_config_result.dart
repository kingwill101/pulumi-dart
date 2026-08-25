// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWebAppConfig.
class GetWebAppConfigResult {
  /// The API key associated with the web App.
  final String? apiKey;
  /// The domain Firebase Auth configures for OAuth redirects, in the format:
  /// projectId.firebaseapp.com
  final String? authDomain;
  /// The default Firebase Realtime Database URL.
  final String? databaseUrl;
  final String? id;
  /// The ID of the project's default GCP resource location. The location is one of the available GCP resource
  /// locations.
  /// This field is omitted if the default GCP resource location has not been finalized yet. To set your project's
  /// default GCP resource location, call defaultLocation.finalize after you add Firebase services to your project.
  final String? locationId;
  /// The unique Google-assigned identifier of the Google Analytics web stream associated with the Firebase Web App.
  /// Firebase SDKs use this ID to interact with Google Analytics APIs.
  /// This field is only present if the App is linked to a web stream in a Google Analytics App + Web property.
  /// Learn more about this ID and Google Analytics web streams in the Analytics documentation.
  /// To generate a measurementId and link the Web App with a Google Analytics web stream,
  /// call projects.addGoogleAnalytics.
  final String? measurementId;
  /// The sender ID for use with Firebase Cloud Messaging.
  final String? messagingSenderId;
  final String? project;
  /// The default Cloud Storage for Firebase storage bucket name.
  final String? storageBucket;
  final String? webAppId;

  /// Creates a new [GetWebAppConfigResult].
  /// [apiKey] The API key associated with the web App.
  /// [authDomain] The domain Firebase Auth configures for OAuth redirects, in the format:
  /// [databaseUrl] The default Firebase Realtime Database URL.
  /// [id] Optional.
  /// [locationId] The ID of the project's default GCP resource location. The location is one of the available GCP resource
  /// [measurementId] The unique Google-assigned identifier of the Google Analytics web stream associated with the Firebase Web App.
  /// [messagingSenderId] The sender ID for use with Firebase Cloud Messaging.
  /// [project] Optional.
  /// [storageBucket] The default Cloud Storage for Firebase storage bucket name.
  /// [webAppId] Optional.
  const GetWebAppConfigResult({
    this.apiKey,
    this.authDomain,
    this.databaseUrl,
    this.id,
    this.locationId,
    this.measurementId,
    this.messagingSenderId,
    this.project,
    this.storageBucket,
    this.webAppId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'authDomain': ?authDomain,
      'databaseUrl': ?databaseUrl,
      'id': ?id,
      'locationId': ?locationId,
      'measurementId': ?measurementId,
      'messagingSenderId': ?messagingSenderId,
      'project': ?project,
      'storageBucket': ?storageBucket,
      'webAppId': ?webAppId,
    };
  }

  factory GetWebAppConfigResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppConfigResult(
      apiKey: (() { final guardedValue = map['apiKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      authDomain: (() { final guardedValue = map['authDomain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      databaseUrl: (() { final guardedValue = map['databaseUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      locationId: (() { final guardedValue = map['locationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      measurementId: (() { final guardedValue = map['measurementId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      messagingSenderId: (() { final guardedValue = map['messagingSenderId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageBucket: (() { final guardedValue = map['storageBucket']; if (guardedValue == null) return null; return guardedValue as String; })(),
      webAppId: (() { final guardedValue = map['webAppId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
