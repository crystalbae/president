var chart = AmCharts.makeChart("chartdiv",
{
    "type": "serial",
    "theme": "none",
    "dataProvider": [{
        "name": "문재인",
        "points": 36.2,
        "color": "#4990E2",
        "bullet": "/assets/moon.jpeg"
    }, {
        "name": "안희정",
        "points": 15.1,
        "color": "#4990E2",
        "bullet": "/assets/ahj.jpeg"
    }, {
        "name": "안철수",
        "points": 12.7,
        "color": "#4990E2",
        "bullet": "/assets/acs.jpeg"
    }, {
        "name": "이재명",
        "points": 11.5,
        "color": "#4990E2",
        "bullet": "/assets/ljm.jpeg"
    }, {
        "name": "심상정",
        "points": 6.2,
        "color": "#4990E2",
        "bullet": "/assets/ssj.jpeg"
    }, {
        "name": "유승민",
        "points": 3.2,
        "color": "#4990E2",
        "bullet": "/assets/ysm.jpeg"
    }],
    "valueAxes": [{
        "maximum": 50,
        "minimum": 0,
        "axisAlpha": 0,
        "dashLength": 4,
        "position": "left"
    }],
    "startDuration": 1,
    "graphs": [{
        "balloonText": "<span style='font-size:13px;'>[[category]]: <b>[[value]]</b></span>",
        "bulletOffset": 37,
        "bulletSize": 66,
        "colorField": "color",
        "cornerRadiusTop": 0,
        "customBulletField": "bullet",
        "fillAlphas": 0.8,
        "lineAlpha": 0,
        "type": "column",
        "valueField": "points"
    }],
    "marginTop": 0,
    "marginRight": 0,
    "marginLeft": 0,
    "marginBottom": 0,
    "autoMargins": false,
    "categoryField": "name",
    "categoryAxis": {
        "axisAlpha": 0,
        "gridAlpha": 0,
        "inside": true,
        "tickLength": 0
    },
    "export": {
    	"enabled": true
     }
});
