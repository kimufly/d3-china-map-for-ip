// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

tip = d3.tip().attr('class', 'd3-tip').html(function(d) { return d; })
var vis = d3.select('svg').call(tip)

vis.selectAll('path')
    .data(data)
    .enter().append('rect')
    .attr('width', function() { return x.rangeBand() })
    .attr('height', function(d) { return h - y(d) })
    .attr('y', function(d) { return y(d) })
    .attr('x', function(d, i) { return x(i) })
    .on('mouseover', tip.show)
    .on('mouseout', tip.hide)
