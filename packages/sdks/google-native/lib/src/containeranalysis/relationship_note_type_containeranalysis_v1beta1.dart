/// The type of relationship between the source and target SPDX elements
enum RelationshipNoteTypeContaineranalysisV1beta1 {
  relationshipTypeUnspecified("RELATIONSHIP_TYPE_UNSPECIFIED"),
  describes("DESCRIBES"),
  describedBy("DESCRIBED_BY"),
  contains("CONTAINS"),
  containedBy("CONTAINED_BY"),
  dependsOn("DEPENDS_ON"),
  dependencyOf("DEPENDENCY_OF"),
  dependencyManifestOf("DEPENDENCY_MANIFEST_OF"),
  buildDependencyOf("BUILD_DEPENDENCY_OF"),
  devDependencyOf("DEV_DEPENDENCY_OF"),
  optionalDependencyOf("OPTIONAL_DEPENDENCY_OF"),
  providedDependencyOf("PROVIDED_DEPENDENCY_OF"),
  testDependencyOf("TEST_DEPENDENCY_OF"),
  runtimeDependencyOf("RUNTIME_DEPENDENCY_OF"),
  exampleOf("EXAMPLE_OF"),
  generates("GENERATES"),
  generatedFrom("GENERATED_FROM"),
  ancestorOf("ANCESTOR_OF"),
  descendantOf("DESCENDANT_OF"),
  variantOf("VARIANT_OF"),
  distributionArtifact("DISTRIBUTION_ARTIFACT"),
  patchFor("PATCH_FOR"),
  patchApplied("PATCH_APPLIED"),
  copyOf("COPY_OF"),
  fileAdded("FILE_ADDED"),
  fileDeleted("FILE_DELETED"),
  fileModified("FILE_MODIFIED"),
  expandedFromArchive("EXPANDED_FROM_ARCHIVE"),
  dynamicLink("DYNAMIC_LINK"),
  staticLink("STATIC_LINK"),
  dataFileOf("DATA_FILE_OF"),
  testCaseOf("TEST_CASE_OF"),
  buildToolOf("BUILD_TOOL_OF"),
  devToolOf("DEV_TOOL_OF"),
  testOf("TEST_OF"),
  testToolOf("TEST_TOOL_OF"),
  documentationOf("DOCUMENTATION_OF"),
  optionalComponentOf("OPTIONAL_COMPONENT_OF"),
  metafileOf("METAFILE_OF"),
  packageOf("PACKAGE_OF"),
  amends("AMENDS"),
  prerequisiteFor("PREREQUISITE_FOR"),
  hasPrerequisite("HAS_PREREQUISITE"),
  other("OTHER");

  const RelationshipNoteTypeContaineranalysisV1beta1(this.wireValue);
  final String wireValue;

  static RelationshipNoteTypeContaineranalysisV1beta1 fromValue(String value) {
    for (final item in RelationshipNoteTypeContaineranalysisV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RelationshipNoteTypeContaineranalysisV1beta1 value: $value');
  }
}

