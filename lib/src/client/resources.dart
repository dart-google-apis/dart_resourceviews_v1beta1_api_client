part of resourceviews_v1beta1_api;

class RegionViewsResource_ {

  final Client _client;

  RegionViewsResource_(Client client) :
      _client = client;

  /**
   * Add resources to the view.
   *
   * [request] - RegionViewsAddResourcesRequest to send in this request
   *
   * [projectName] - The project name of the resource view.
   *
   * [region] - The region name of the resource view.
   *
   * [resourceViewName] - The name of the resource view.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> addresources(RegionViewsAddResourcesRequest request, core.String projectName, core.String region, core.String resourceViewName, {core.Map optParams}) {
    var url = "{projectName}/regions/{region}/resourceViews/{resourceViewName}/addResources";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (projectName == null) paramErrors.add("projectName is required");
    if (projectName != null) urlParams["projectName"] = projectName;
    if (region == null) paramErrors.add("region is required");
    if (region != null) urlParams["region"] = region;
    if (resourceViewName == null) paramErrors.add("resourceViewName is required");
    if (resourceViewName != null) urlParams["resourceViewName"] = resourceViewName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Delete a resource view.
   *
   * [projectName] - The project name of the resource view.
   *
   * [region] - The region name of the resource view.
   *
   * [resourceViewName] - The name of the resource view.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String projectName, core.String region, core.String resourceViewName, {core.Map optParams}) {
    var url = "{projectName}/regions/{region}/resourceViews/{resourceViewName}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (projectName == null) paramErrors.add("projectName is required");
    if (projectName != null) urlParams["projectName"] = projectName;
    if (region == null) paramErrors.add("region is required");
    if (region != null) urlParams["region"] = region;
    if (resourceViewName == null) paramErrors.add("resourceViewName is required");
    if (resourceViewName != null) urlParams["resourceViewName"] = resourceViewName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Get the information of a resource view.
   *
   * [projectName] - The project name of the resource view.
   *
   * [region] - The region name of the resource view.
   *
   * [resourceViewName] - The name of the resource view.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ResourceView> get(core.String projectName, core.String region, core.String resourceViewName, {core.Map optParams}) {
    var url = "{projectName}/regions/{region}/resourceViews/{resourceViewName}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (projectName == null) paramErrors.add("projectName is required");
    if (projectName != null) urlParams["projectName"] = projectName;
    if (region == null) paramErrors.add("region is required");
    if (region != null) urlParams["region"] = region;
    if (resourceViewName == null) paramErrors.add("resourceViewName is required");
    if (resourceViewName != null) urlParams["resourceViewName"] = resourceViewName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ResourceView.fromJson(data));
  }

  /**
   * Create a resource view.
   *
   * [request] - ResourceView to send in this request
   *
   * [projectName] - The project name of the resource view.
   *
   * [region] - The region name of the resource view.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<RegionViewsInsertResponse> insert(ResourceView request, core.String projectName, core.String region, {core.Map optParams}) {
    var url = "{projectName}/regions/{region}/resourceViews";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (projectName == null) paramErrors.add("projectName is required");
    if (projectName != null) urlParams["projectName"] = projectName;
    if (region == null) paramErrors.add("region is required");
    if (region != null) urlParams["region"] = region;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new RegionViewsInsertResponse.fromJson(data));
  }

  /**
   * List resource views.
   *
   * [projectName] - The project name of the resource view.
   *
   * [region] - The region name of the resource view.
   *
   * [maxResults] - Maximum count of results to be returned. Acceptable values are 0 to 500, inclusive. (Default: 50)
   *   Default: 50
   *   Minimum: 0
   *   Maximum: 500
   *
   * [pageToken] - Specifies a nextPageToken returned by a previous list request. This token can be used to request the next page of results from a previous list request.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<RegionViewsListResponse> list(core.String projectName, core.String region, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "{projectName}/regions/{region}/resourceViews";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (projectName == null) paramErrors.add("projectName is required");
    if (projectName != null) urlParams["projectName"] = projectName;
    if (region == null) paramErrors.add("region is required");
    if (region != null) urlParams["region"] = region;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new RegionViewsListResponse.fromJson(data));
  }

  /**
   * List the resources in the view.
   *
   * [projectName] - The project name of the resource view.
   *
   * [region] - The region name of the resource view.
   *
   * [resourceViewName] - The name of the resource view.
   *
   * [maxResults] - Maximum count of results to be returned. Acceptable values are 0 to 500, inclusive. (Default: 50)
   *   Default: 50
   *   Minimum: 0
   *   Maximum: 500
   *
   * [pageToken] - Specifies a nextPageToken returned by a previous list request. This token can be used to request the next page of results from a previous list request.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<RegionViewsListResourcesResponse> listresources(core.String projectName, core.String region, core.String resourceViewName, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "{projectName}/regions/{region}/resourceViews/{resourceViewName}/resources";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (projectName == null) paramErrors.add("projectName is required");
    if (projectName != null) urlParams["projectName"] = projectName;
    if (region == null) paramErrors.add("region is required");
    if (region != null) urlParams["region"] = region;
    if (resourceViewName == null) paramErrors.add("resourceViewName is required");
    if (resourceViewName != null) urlParams["resourceViewName"] = resourceViewName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new RegionViewsListResourcesResponse.fromJson(data));
  }

  /**
   * Remove resources from the view.
   *
   * [request] - RegionViewsRemoveResourcesRequest to send in this request
   *
   * [projectName] - The project name of the resource view.
   *
   * [region] - The region name of the resource view.
   *
   * [resourceViewName] - The name of the resource view.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> removeresources(RegionViewsRemoveResourcesRequest request, core.String projectName, core.String region, core.String resourceViewName, {core.Map optParams}) {
    var url = "{projectName}/regions/{region}/resourceViews/{resourceViewName}/removeResources";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (projectName == null) paramErrors.add("projectName is required");
    if (projectName != null) urlParams["projectName"] = projectName;
    if (region == null) paramErrors.add("region is required");
    if (region != null) urlParams["region"] = region;
    if (resourceViewName == null) paramErrors.add("resourceViewName is required");
    if (resourceViewName != null) urlParams["resourceViewName"] = resourceViewName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response;
  }
}

class ZoneViewsResource_ {

  final Client _client;

  ZoneViewsResource_(Client client) :
      _client = client;

  /**
   * Add resources to the view.
   *
   * [request] - ZoneViewsAddResourcesRequest to send in this request
   *
   * [projectName] - The project name of the resource view.
   *
   * [zone] - The zone name of the resource view.
   *
   * [resourceViewName] - The name of the resource view.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> addresources(ZoneViewsAddResourcesRequest request, core.String projectName, core.String zone, core.String resourceViewName, {core.Map optParams}) {
    var url = "{projectName}/zones/{zone}/resourceViews/{resourceViewName}/addResources";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (projectName == null) paramErrors.add("projectName is required");
    if (projectName != null) urlParams["projectName"] = projectName;
    if (resourceViewName == null) paramErrors.add("resourceViewName is required");
    if (resourceViewName != null) urlParams["resourceViewName"] = resourceViewName;
    if (zone == null) paramErrors.add("zone is required");
    if (zone != null) urlParams["zone"] = zone;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Delete a resource view.
   *
   * [projectName] - The project name of the resource view.
   *
   * [zone] - The zone name of the resource view.
   *
   * [resourceViewName] - The name of the resource view.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String projectName, core.String zone, core.String resourceViewName, {core.Map optParams}) {
    var url = "{projectName}/zones/{zone}/resourceViews/{resourceViewName}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (projectName == null) paramErrors.add("projectName is required");
    if (projectName != null) urlParams["projectName"] = projectName;
    if (resourceViewName == null) paramErrors.add("resourceViewName is required");
    if (resourceViewName != null) urlParams["resourceViewName"] = resourceViewName;
    if (zone == null) paramErrors.add("zone is required");
    if (zone != null) urlParams["zone"] = zone;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Get the information of a zonal resource view.
   *
   * [projectName] - The project name of the resource view.
   *
   * [zone] - The zone name of the resource view.
   *
   * [resourceViewName] - The name of the resource view.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ResourceView> get(core.String projectName, core.String zone, core.String resourceViewName, {core.Map optParams}) {
    var url = "{projectName}/zones/{zone}/resourceViews/{resourceViewName}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (projectName == null) paramErrors.add("projectName is required");
    if (projectName != null) urlParams["projectName"] = projectName;
    if (resourceViewName == null) paramErrors.add("resourceViewName is required");
    if (resourceViewName != null) urlParams["resourceViewName"] = resourceViewName;
    if (zone == null) paramErrors.add("zone is required");
    if (zone != null) urlParams["zone"] = zone;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ResourceView.fromJson(data));
  }

  /**
   * Create a resource view.
   *
   * [request] - ResourceView to send in this request
   *
   * [projectName] - The project name of the resource view.
   *
   * [zone] - The zone name of the resource view.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ZoneViewsInsertResponse> insert(ResourceView request, core.String projectName, core.String zone, {core.Map optParams}) {
    var url = "{projectName}/zones/{zone}/resourceViews";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (projectName == null) paramErrors.add("projectName is required");
    if (projectName != null) urlParams["projectName"] = projectName;
    if (zone == null) paramErrors.add("zone is required");
    if (zone != null) urlParams["zone"] = zone;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ZoneViewsInsertResponse.fromJson(data));
  }

  /**
   * List resource views.
   *
   * [projectName] - The project name of the resource view.
   *
   * [zone] - The zone name of the resource view.
   *
   * [maxResults] - Maximum count of results to be returned. Acceptable values are 0 to 500, inclusive. (Default: 50)
   *   Default: 50
   *   Minimum: 0
   *   Maximum: 500
   *
   * [pageToken] - Specifies a nextPageToken returned by a previous list request. This token can be used to request the next page of results from a previous list request.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ZoneViewsListResponse> list(core.String projectName, core.String zone, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "{projectName}/zones/{zone}/resourceViews";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (projectName == null) paramErrors.add("projectName is required");
    if (projectName != null) urlParams["projectName"] = projectName;
    if (zone == null) paramErrors.add("zone is required");
    if (zone != null) urlParams["zone"] = zone;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ZoneViewsListResponse.fromJson(data));
  }

  /**
   * List the resources of the resource view.
   *
   * [projectName] - The project name of the resource view.
   *
   * [zone] - The zone name of the resource view.
   *
   * [resourceViewName] - The name of the resource view.
   *
   * [maxResults] - Maximum count of results to be returned. Acceptable values are 0 to 500, inclusive. (Default: 50)
   *   Default: 50
   *   Minimum: 0
   *   Maximum: 500
   *
   * [pageToken] - Specifies a nextPageToken returned by a previous list request. This token can be used to request the next page of results from a previous list request.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ZoneViewsListResourcesResponse> listresources(core.String projectName, core.String zone, core.String resourceViewName, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "{projectName}/zones/{zone}/resourceViews/{resourceViewName}/resources";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (projectName == null) paramErrors.add("projectName is required");
    if (projectName != null) urlParams["projectName"] = projectName;
    if (resourceViewName == null) paramErrors.add("resourceViewName is required");
    if (resourceViewName != null) urlParams["resourceViewName"] = resourceViewName;
    if (zone == null) paramErrors.add("zone is required");
    if (zone != null) urlParams["zone"] = zone;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ZoneViewsListResourcesResponse.fromJson(data));
  }

  /**
   * Remove resources from the view.
   *
   * [request] - ZoneViewsRemoveResourcesRequest to send in this request
   *
   * [projectName] - The project name of the resource view.
   *
   * [zone] - The zone name of the resource view.
   *
   * [resourceViewName] - The name of the resource view.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> removeresources(ZoneViewsRemoveResourcesRequest request, core.String projectName, core.String zone, core.String resourceViewName, {core.Map optParams}) {
    var url = "{projectName}/zones/{zone}/resourceViews/{resourceViewName}/removeResources";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (projectName == null) paramErrors.add("projectName is required");
    if (projectName != null) urlParams["projectName"] = projectName;
    if (resourceViewName == null) paramErrors.add("resourceViewName is required");
    if (resourceViewName != null) urlParams["resourceViewName"] = resourceViewName;
    if (zone == null) paramErrors.add("zone is required");
    if (zone != null) urlParams["zone"] = zone;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response;
  }
}

