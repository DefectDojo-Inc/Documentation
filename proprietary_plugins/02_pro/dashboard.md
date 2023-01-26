---
title: "Enhanced Dashboard"
description: "A customizable dashboard for DefectDojo."
draft: false
weight: 2
---

## Enhanced Dashboard

The upgraded DefectDojo dashboard provides users with an enhanced take on the base DefectDojo dashboard. With this custom dashboard, users are given full control of what overview information tiles are displayed (e.g. _Passing Products_ or _Active Critical Findings_), what icons and colors best represent these custom tiles, as well as what metrics should be displayed.

_Enhanced Dashboard_ and is configured globally for all users (e.g. all users will see the same custom dashboard).

![Enhanced Dashboard](../../../images/dashboard/dd-dashboard.png)

This upgraded dashboard for DefectDojo also includes dynamic color tiles, which allows specified tiles to take a range of colors based on minimum and maximum threshold values. With this feature enabled, a tile's color will automatically change based on the data that it represents.

To customize the enhanced dashboard, navigate to the _Dashboard Settings_ page under the plugins tab within the sidebar.

![Accessing Dashboard Settings](../../../images/dashboard/nav-dd.png)

## Enhanced Dashboard Settings

Initially, the _Enhanced Dashboard_ will include preset tiles and metrics, however there is a variety of tiles that can be added. The following is an example of how to add a custom _Finding Tile_ that displays _Active Critical Findings_, and updates its color dynamically as the number of _Active Critical Findings_ increases within the threshold.

First, to add a new tile, drag and drop an item from the _Available Tiles_, block to the _Dashboard Settings_ block. For this example, a new _Finding Tile_ will be added.

![Add Dashboard Tile](../../../images/dashboard/dd-add-tile.png)

Once the tile has been added, its display attributes and filter attributes can be configured. For this example, _Dynamic Color_ will be used with a _Minimum Threshold_ of 0, and a _Maximum Threshold_ of 5. This means that, when no _Active Critical Findings_ exist across all products, the tile will display green, but as this number increases (to become closer to the _Maximum Threshold_), the tile color will change to display more alerting colors (such as yellow, orange, and red).

![Add Dashboard Tile Headers](../../../images/dashboard/dd-tile-headers.png)

Once a tile's display attributes have been set, filters must be added to query the desired information (e.g. all Findings with a status of _Active_ and _Critical_)

![Add Dashboard Tile Filters](../../../images/dashboard/dd-tile-filters.png)

Once the tile information has been configured, the _Enhanced Dashboard_ settings can be submitted using the _Submit_ button, where the newly configured dashboard will then be displayed.

With this example, the custom dashboard configuration would display as follows.

![Enhanced Dashboard Example](../../../images/dashboard/dd-single-tile.png)

For additional information, please see our [pricing page](https://www.defectdojo.com/pricing).