// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutonomousDatabasePropertiesConnectionUrl {
  /// Oracle Application Express (APEX) URL.
  final pulumi.Input<String>? apexUri;

  /// The URL of the Database Transforms for the Autonomous Database.
  final pulumi.Input<String>? databaseTransformsUri;

  /// The URL of the Graph Studio for the Autonomous Database.
  final pulumi.Input<String>? graphStudioUri;

  /// The URL of the Oracle Machine Learning (OML) Notebook for the Autonomous
  /// Database.
  final pulumi.Input<String>? machineLearningNotebookUri;

  /// The URL of Machine Learning user management the Autonomous Database.
  final pulumi.Input<String>? machineLearningUserManagementUri;

  /// The URL of the MongoDB API for the Autonomous Database.
  final pulumi.Input<String>? mongoDbUri;

  /// The Oracle REST Data Services (ORDS) URL of the Web Access for the
  /// Autonomous Database.
  final pulumi.Input<String>? ordsUri;

  /// The URL of the Oracle SQL Developer Web for the Autonomous Database.
  final pulumi.Input<String>? sqlDevWebUri;

  /// Creates a new [AutonomousDatabasePropertiesConnectionUrl].
  /// [apexUri] Oracle Application Express (APEX) URL.
  /// [databaseTransformsUri] The URL of the Database Transforms for the Autonomous Database.
  /// [graphStudioUri] The URL of the Graph Studio for the Autonomous Database.
  /// [machineLearningNotebookUri] The URL of the Oracle Machine Learning (OML) Notebook for the Autonomous
  /// [machineLearningUserManagementUri] The URL of Machine Learning user management the Autonomous Database.
  /// [mongoDbUri] The URL of the MongoDB API for the Autonomous Database.
  /// [ordsUri] The Oracle REST Data Services (ORDS) URL of the Web Access for the
  /// [sqlDevWebUri] The URL of the Oracle SQL Developer Web for the Autonomous Database.
  AutonomousDatabasePropertiesConnectionUrl({
    this.apexUri,
    this.databaseTransformsUri,
    this.graphStudioUri,
    this.machineLearningNotebookUri,
    this.machineLearningUserManagementUri,
    this.mongoDbUri,
    this.ordsUri,
    this.sqlDevWebUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apexUri': ?apexUri,
      'databaseTransformsUri': ?databaseTransformsUri,
      'graphStudioUri': ?graphStudioUri,
      'machineLearningNotebookUri': ?machineLearningNotebookUri,
      'machineLearningUserManagementUri': ?machineLearningUserManagementUri,
      'mongoDbUri': ?mongoDbUri,
      'ordsUri': ?ordsUri,
      'sqlDevWebUri': ?sqlDevWebUri,
    };
  }

  factory AutonomousDatabasePropertiesConnectionUrl.fromMap(
    Map<String, dynamic> map,
  ) {
    return AutonomousDatabasePropertiesConnectionUrl(
      apexUri: (() {
        final guardedValue = map['apexUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      databaseTransformsUri: (() {
        final guardedValue = map['databaseTransformsUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      graphStudioUri: (() {
        final guardedValue = map['graphStudioUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      machineLearningNotebookUri: (() {
        final guardedValue = map['machineLearningNotebookUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      machineLearningUserManagementUri: (() {
        final guardedValue = map['machineLearningUserManagementUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mongoDbUri: (() {
        final guardedValue = map['mongoDbUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ordsUri: (() {
        final guardedValue = map['ordsUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sqlDevWebUri: (() {
        final guardedValue = map['sqlDevWebUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
