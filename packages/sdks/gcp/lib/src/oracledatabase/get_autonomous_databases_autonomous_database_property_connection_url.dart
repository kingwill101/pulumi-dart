// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAutonomousDatabasesAutonomousDatabasePropertyConnectionUrl {
  /// Oracle Application Express (APEX) URL.
  final pulumi.Input<String> apexUri;
  /// The URL of the Database Transforms for the Autonomous Database.
  final pulumi.Input<String> databaseTransformsUri;
  /// The URL of the Graph Studio for the Autonomous Database.
  final pulumi.Input<String> graphStudioUri;
  /// The URL of the Oracle Machine Learning (OML) Notebook for the Autonomous
  /// Database.
  final pulumi.Input<String> machineLearningNotebookUri;
  /// The URL of Machine Learning user management the Autonomous Database.
  final pulumi.Input<String> machineLearningUserManagementUri;
  /// The URL of the MongoDB API for the Autonomous Database.
  final pulumi.Input<String> mongoDbUri;
  /// The Oracle REST Data Services (ORDS) URL of the Web Access for the
  /// Autonomous Database.
  final pulumi.Input<String> ordsUri;
  /// The URL of the Oracle SQL Developer Web for the Autonomous Database.
  final pulumi.Input<String> sqlDevWebUri;

  /// Creates a new [GetAutonomousDatabasesAutonomousDatabasePropertyConnectionUrl].
  /// [apexUri] Oracle Application Express (APEX) URL.
  /// [databaseTransformsUri] The URL of the Database Transforms for the Autonomous Database.
  /// [graphStudioUri] The URL of the Graph Studio for the Autonomous Database.
  /// [machineLearningNotebookUri] The URL of the Oracle Machine Learning (OML) Notebook for the Autonomous
  /// [machineLearningUserManagementUri] The URL of Machine Learning user management the Autonomous Database.
  /// [mongoDbUri] The URL of the MongoDB API for the Autonomous Database.
  /// [ordsUri] The Oracle REST Data Services (ORDS) URL of the Web Access for the
  /// [sqlDevWebUri] The URL of the Oracle SQL Developer Web for the Autonomous Database.
  GetAutonomousDatabasesAutonomousDatabasePropertyConnectionUrl({
    required this.apexUri,
    required this.databaseTransformsUri,
    required this.graphStudioUri,
    required this.machineLearningNotebookUri,
    required this.machineLearningUserManagementUri,
    required this.mongoDbUri,
    required this.ordsUri,
    required this.sqlDevWebUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apexUri': apexUri,
      'databaseTransformsUri': databaseTransformsUri,
      'graphStudioUri': graphStudioUri,
      'machineLearningNotebookUri': machineLearningNotebookUri,
      'machineLearningUserManagementUri': machineLearningUserManagementUri,
      'mongoDbUri': mongoDbUri,
      'ordsUri': ordsUri,
      'sqlDevWebUri': sqlDevWebUri,
    };
  }

  factory GetAutonomousDatabasesAutonomousDatabasePropertyConnectionUrl.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabasesAutonomousDatabasePropertyConnectionUrl(
      apexUri: (map['apexUri'] as String).input(),
      databaseTransformsUri: (map['databaseTransformsUri'] as String).input(),
      graphStudioUri: (map['graphStudioUri'] as String).input(),
      machineLearningNotebookUri: (map['machineLearningNotebookUri'] as String).input(),
      machineLearningUserManagementUri: (map['machineLearningUserManagementUri'] as String).input(),
      mongoDbUri: (map['mongoDbUri'] as String).input(),
      ordsUri: (map['ordsUri'] as String).input(),
      sqlDevWebUri: (map['sqlDevWebUri'] as String).input(),
    );
  }
}

