part of resourceviews_v1beta1_api;

/** The Label to be applied to the resource views. */
class Label {

  /** Key of the label. */
  core.String key;

  /** Value of the label. */
  core.String value;

  /** Create new Label from JSON data */
  Label.fromJson(core.Map json) {
    if (json.containsKey("key")) {
      key = json["key"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for Label */
  core.Map toJson() {
    var output = new core.Map();

    if (key != null) {
      output["key"] = key;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of Label */
  core.String toString() => JSON.encode(this.toJson());

}

/** The request to add resources to the resource view. */
class RegionViewsAddResourcesRequest {

  /** The list of resources to be added. */
  core.List<core.String> resources;

  /** Create new RegionViewsAddResourcesRequest from JSON data */
  RegionViewsAddResourcesRequest.fromJson(core.Map json) {
    if (json.containsKey("resources")) {
      resources = json["resources"].toList();
    }
  }

  /** Create JSON Object for RegionViewsAddResourcesRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (resources != null) {
      output["resources"] = resources.toList();
    }

    return output;
  }

  /** Return String representation of RegionViewsAddResourcesRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** The response to a resource view insert request. */
class RegionViewsInsertResponse {

  /** The resource view object inserted. */
  ResourceView resource;

  /** Create new RegionViewsInsertResponse from JSON data */
  RegionViewsInsertResponse.fromJson(core.Map json) {
    if (json.containsKey("resource")) {
      resource = new ResourceView.fromJson(json["resource"]);
    }
  }

  /** Create JSON Object for RegionViewsInsertResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (resource != null) {
      output["resource"] = resource.toJson();
    }

    return output;
  }

  /** Return String representation of RegionViewsInsertResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** The response to the list resource request. */
class RegionViewsListResourcesResponse {

  /** The resources in the view. */
  core.List<core.String> members;

  /** A token used for pagination. */
  core.String nextPageToken;

  /** Create new RegionViewsListResourcesResponse from JSON data */
  RegionViewsListResourcesResponse.fromJson(core.Map json) {
    if (json.containsKey("members")) {
      members = json["members"].toList();
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for RegionViewsListResourcesResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (members != null) {
      output["members"] = members.toList();
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of RegionViewsListResourcesResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** The response to the list resource view request. */
class RegionViewsListResponse {

  /** A token used for pagination. */
  core.String nextPageToken;

  /** The list of resource views that meet the criteria. */
  core.List<ResourceView> resourceViews;

  /** Create new RegionViewsListResponse from JSON data */
  RegionViewsListResponse.fromJson(core.Map json) {
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("resourceViews")) {
      resourceViews = json["resourceViews"].map((resourceViewsItem) => new ResourceView.fromJson(resourceViewsItem)).toList();
    }
  }

  /** Create JSON Object for RegionViewsListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (resourceViews != null) {
      output["resourceViews"] = resourceViews.map((resourceViewsItem) => resourceViewsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of RegionViewsListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** The request to remove resources from the resource view. */
class RegionViewsRemoveResourcesRequest {

  /** The list of resources to be removed. */
  core.List<core.String> resources;

  /** Create new RegionViewsRemoveResourcesRequest from JSON data */
  RegionViewsRemoveResourcesRequest.fromJson(core.Map json) {
    if (json.containsKey("resources")) {
      resources = json["resources"].toList();
    }
  }

  /** Create JSON Object for RegionViewsRemoveResourcesRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (resources != null) {
      output["resources"] = resources.toList();
    }

    return output;
  }

  /** Return String representation of RegionViewsRemoveResourcesRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** The resource view object. */
class ResourceView {

  /** The creation time of the resource view. */
  core.String creationTime;

  /** The detailed description of the resource view. */
  core.String description;

  /** [Output Only] The ID of the resource view. */
  core.String id;

  /** Type of the resource. */
  core.String kind;

  /** The labels for events. */
  core.List<Label> labels;

  /** The last modified time of the view. Not supported yet. */
  core.String lastModified;

  /** A list of all resources in the resource view. */
  core.List<core.String> members;

  /** The name of the resource view. */
  core.String name;

  /** The total number of resources in the resource view. */
  core.int numMembers;

  /** [Output Only] A self-link to the resource view. */
  core.String selfLink;

  /** Create new ResourceView from JSON data */
  ResourceView.fromJson(core.Map json) {
    if (json.containsKey("creationTime")) {
      creationTime = json["creationTime"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("labels")) {
      labels = json["labels"].map((labelsItem) => new Label.fromJson(labelsItem)).toList();
    }
    if (json.containsKey("lastModified")) {
      lastModified = json["lastModified"];
    }
    if (json.containsKey("members")) {
      members = json["members"].toList();
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("numMembers")) {
      numMembers = json["numMembers"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for ResourceView */
  core.Map toJson() {
    var output = new core.Map();

    if (creationTime != null) {
      output["creationTime"] = creationTime;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (labels != null) {
      output["labels"] = labels.map((labelsItem) => labelsItem.toJson()).toList();
    }
    if (lastModified != null) {
      output["lastModified"] = lastModified;
    }
    if (members != null) {
      output["members"] = members.toList();
    }
    if (name != null) {
      output["name"] = name;
    }
    if (numMembers != null) {
      output["numMembers"] = numMembers;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of ResourceView */
  core.String toString() => JSON.encode(this.toJson());

}

/** The request to add resources to the resource view. */
class ZoneViewsAddResourcesRequest {

  /** The list of resources to be added. */
  core.List<core.String> resources;

  /** Create new ZoneViewsAddResourcesRequest from JSON data */
  ZoneViewsAddResourcesRequest.fromJson(core.Map json) {
    if (json.containsKey("resources")) {
      resources = json["resources"].toList();
    }
  }

  /** Create JSON Object for ZoneViewsAddResourcesRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (resources != null) {
      output["resources"] = resources.toList();
    }

    return output;
  }

  /** Return String representation of ZoneViewsAddResourcesRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** The response to an insert request. */
class ZoneViewsInsertResponse {

  /** The resource view object that has been inserted. */
  ResourceView resource;

  /** Create new ZoneViewsInsertResponse from JSON data */
  ZoneViewsInsertResponse.fromJson(core.Map json) {
    if (json.containsKey("resource")) {
      resource = new ResourceView.fromJson(json["resource"]);
    }
  }

  /** Create JSON Object for ZoneViewsInsertResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (resource != null) {
      output["resource"] = resource.toJson();
    }

    return output;
  }

  /** Return String representation of ZoneViewsInsertResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** The response to a list resource request. */
class ZoneViewsListResourcesResponse {

  /** The full URL of resources in the view. */
  core.List<core.String> members;

  /** A token used for pagination. */
  core.String nextPageToken;

  /** Create new ZoneViewsListResourcesResponse from JSON data */
  ZoneViewsListResourcesResponse.fromJson(core.Map json) {
    if (json.containsKey("members")) {
      members = json["members"].toList();
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for ZoneViewsListResourcesResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (members != null) {
      output["members"] = members.toList();
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of ZoneViewsListResourcesResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** The response to a list request. */
class ZoneViewsListResponse {

  /** A token used for pagination. */
  core.String nextPageToken;

  /** The result that contains all resource views that meet the criteria. */
  core.List<ResourceView> resourceViews;

  /** Create new ZoneViewsListResponse from JSON data */
  ZoneViewsListResponse.fromJson(core.Map json) {
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("resourceViews")) {
      resourceViews = json["resourceViews"].map((resourceViewsItem) => new ResourceView.fromJson(resourceViewsItem)).toList();
    }
  }

  /** Create JSON Object for ZoneViewsListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (resourceViews != null) {
      output["resourceViews"] = resourceViews.map((resourceViewsItem) => resourceViewsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of ZoneViewsListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** The request to remove resources from the resource view. */
class ZoneViewsRemoveResourcesRequest {

  /** The list of resources to be removed. */
  core.List<core.String> resources;

  /** Create new ZoneViewsRemoveResourcesRequest from JSON data */
  ZoneViewsRemoveResourcesRequest.fromJson(core.Map json) {
    if (json.containsKey("resources")) {
      resources = json["resources"].toList();
    }
  }

  /** Create JSON Object for ZoneViewsRemoveResourcesRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (resources != null) {
      output["resources"] = resources.toList();
    }

    return output;
  }

  /** Return String representation of ZoneViewsRemoveResourcesRequest */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
