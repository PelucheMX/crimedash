<%@ Page Title="Crime - District of Columbia Housing Authority" Language="VB" MasterPageFile="MasterPage1.master"
    Debug="false" EnableViewState="false" AutoEventWireup="true" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .dropdown {
    width: 500px;
    height: 35px;

}
          h1
        {
            color: white;
        }
        .jumbotron
        {
            position: relative;
            padding: 0 !important;
            margin-top: 5px !important;
            background: #4d86b9;
            margin-top: 5px;
            text-align: center;
            margin-bottom: 0 !important;
        }
    </style>
    <div class="container-fluid p-2">
        <div class="jumbotron">
                <h1 style="width: 100%; height: 25%">
                    <img rel="prefetch" class="p-1" src="DCHABrandmark.png" alt="logo" style="width: 10%;
                        height: 10%" />
                    District of Columbia Housing Authority</h1>
            </div>
         </div>
        <h5 class="text-center text-primary">
            Violent Crime</h5>
        <div class="form-group">
            <select class="form-control dropdown" id="props" onchange="showResults(this)">
                <option value="">Select Property</option>
                <option value="6X">Arthur Capper Senior</option>
                <option value="5I">Barry Farm</option>
                <option value="5O">Benning Terrace</option>
                <option value="5S">Carroll Apartments</option>
                <option value="7O">Carrollsburg Dwellings</option>
                <option value="6F">Claridge Towers</option>
                <option value="6N">Colorado</option>
                <option value="6M">Columbia Road</option>
                <option value="6D">Edgewood</option>
                <option value="5X">Elvans Road</option>
                <option value="5U">Fort Dupont Addition</option>
                <option value="5H">Fort Dupont Dwellings</option>
                <option value="6H">Fort Lincoln</option>
                <option value="6R">Frontiers</option>
                <option value="68">Garfield Terrace Family</option>
                <option value="68S">Garfield Terrace Senior</option>
                <option value="67">Greenleaf Additions</option>
                <option value="6A">Greenleaf Extension</option>
                <option value="61">Greenleaf Gardens</option>
                <option value="62">Greenleaf Senior</option>
                <option value="6J">Harvard Towers</option>
                <option value="5L">Highland Addition</option>
                <option value="5T">Highland Dwellings</option>
                <option value="5F">Hopkins Apartments</option>
                <option value="6G">Horizon House</option>
                <option value="6L">James Apartments</option>
                <option value="5Z">James Creek</option>
                <option value="6I">Judiciary</option>
                <option value="60">Kelly Miller</option>
                <option value="5N">Kenilworth Courts</option>
                <option value="5R">Kentucky Courts</option>
                <option value="5W">Knox Hill</option>
                <option value="6B">Langston Additions</option>
                <option value="64">Langston Terrace</option>
                <option value="69">Ledroit Apartments</option>
                <option value="5J">Lincoln Heights</option>
                <option value="6O">Lincoln Road</option>
                <option value="6C">Montana Terrace</option>
                <option value="66">Park Morton</option>
                <option value="5K">Parkside Additions</option>
                <option value="5G">Potomac Gardens Family</option>
                <option value="5GS">Potomac Gardens Senior</option>
                <option value="6K">Regency House</option>
                <option value="5M">Richardson Dwellings</option>
                <option value="65">Sibley Plaza</option>
                <option value="5P">Stoddert Terrace</option>
                <option value="6E">Sursum Corda</option>
                <option value="63">Syphax Gardens</option>
                <option value="5Y">The Villager</option>
                <option value="5V">Wade Apartments</option>
                <option value="5Q">Woodland Terrace</option>
                </select>
              </div>
        <div id="results" class="m-3 text-center">
        </div>
        <div class="row border-top  pt-4 pb-5 mb-5">
            <div class="col">
                <div id="piechart1">
                </div>
            </div>
            <div id="data1" class="col small">
            </div>
        </div>
        <div class="row border-top  pt-4 pb-5 mb-5">
            <div class="col">
                <div id="piechart2">
                </div>
            </div>
            <div id="data2" class="col small">
            </div>
        </div>
        <div class="row border-top  pt-4 pb-5 mb-5">
            <div class="col">
                <div id="piechart3">
                </div>
            </div>
            <div id="data3" class="col small">
            </div>
        </div>
        <div class="row border-top  pt-4 pb-5 mb-5">
            <div class="col">
                <div id="piechart4">
                </div>
            </div>
            <div id="data4" class="col small">
            </div>
        </div>
        <div class="row border-top  pt-4 pb-5 mb-5">
            <div class="col">
                <div id="piechart5">
                </div>
            </div>
            <div id="data5" class="col small">
            </div>
        </div>
        <div class="row border-top  pt-4 pb-5 mb-5">
            <div class="col">
                <div id="piechart6">
                </div>
            </div>
            <div id="data6" class="col small">
            </div>
        </div>
        <div class="row border-top  pt-4 pb-5 mb-5">
            <div class="col">
                <div id="piechart7">
                </div>
            </div>
            <div id="data7" class="col small">
            </div>
        </div>
        <div class="row border-top  pt-4 pb-5 mb-5">
            <div class="col">
                <div id="piechart8">
                </div>
            </div>
            <div id="data8" class="col small">
            </div>
        </div>
        <div class="row border-top  pt-4 pb-5 mb-5">
            <div class="col">
                <div id="piechart9">
                </div>
            </div>
            <div id="data9" class="col small">
            </div>
        </div>
        <div class="row border-top  pt-4 pb-5 mb-5">
            <div class="col">
                <div id="piechart10">
                </div>
            </div>
            <div id="data10" class="col small">
            </div>
        </div>
        <div class="row border-top  pt-4 pb-5 mb-5">
            <div class="col">
                <div id="piechart11">
                </div>
            </div>
            <div id="data11" class="col small">
            </div>
        </div>
        <div class="row border-top  pt-4 pb-5 mb-5">
            <div class="col">
                <div id="piechart12">
                </div>
            </div>
            <div id="data12" class="col small">
            </div>
        </div>
    </div>
    <script type="text/javascript">

        bala(0, "8023", "units");
        getPropertyDataTable();
        var prps = $("#props"), res = $('#results'), ct = $('#piechart'), b = new Date, current_year =  b.getFullYear(), past_year = (current_year -1), gl = [];
        showResults();
        loading();

        function showResults() {
            res.empty();
            var sql = "og = 'violent' AND y > " + (current_year -2); //default to last two years
            if (prps.val().length > 1) { sql = "og = 'violent' AND w = '" + prps.val() + "'" };
            var a = alasql("SELECT * FROM units WHERE " + sql);
            if (a && a.length > 0) {
                var o, tx, r = alasql("SELECT COUNT(c) As c, y, mt FROM ? GROUP BY y, mt ORDER BY y ASC, mt ASC",[a]);
                var tr = alasql("SELECT SUM(c) As c FROM ?",[r]);
                var tot = tr[0].c;
                var ca = alasql("SELECT * FROM ? WHERE y = '" + current_year + "'",[a]);
                var pa = alasql("SELECT * FROM ? WHERE y = '" + past_year + "'",[a]);
                res.html(aggregateStats(ca,current_year) + aggregateStats(pa,past_year));                
                for (var i = 1; i < 12; i++) { 
                   var rr = alasql("SELECT c, y FROM ? WHERE mt = " + i,[r]);                   
                   if (rr&&rr.length>0)
                   {var rrr = alasql("SELECT SUM(c) As c FROM ?",[rr]), t = rrr[0].c, al = [], y;
                    for (var x = 0, ll = rr.length; x < ll; x++) { 
                        o = rr[x];
                        y = percentOnly(o.c,t);
                        al.push([o.y + ' - ' + y + '% (' + o.c + ')',y]);
                    };
                    //create chart
                       var chart = bb.generate({
                           title: {
                               text: MonthName(i) + ' - ' + getPercent(t, tot),
                               padding: {
                                   top: 1,
                                   bottom: 1,
                               },
                               size: {
                                   height: 50,
                                   width: 100
                               },
                               position: "center"
                           },
                           data: {
                               columns: al,
                               type: "bar",
                           },
                           bar: {
                               padding:30
                           },
                           color: {
                               pattern: [
                                   "#5ac4e1",
                                   "#198eca",
                                   "#e9483d"
                            ]
                        },
                        bindto: "#piechart" + i
                        });
                        //data column
                        $("#data" + i).html(aggregateStats(alasql("SELECT * FROM ? WHERE mt = " + i,[ca]),current_year) + aggregateStats(alasql("SELECT * FROM ? WHERE mt = " + i,[pa]),past_year));
                   };
                };                
            } else { res.html('<div class="alert alert-danger">no data available</div>') };
        } 

        function aggregateStats(ca,yt)
        {if (!ca) { return ''}; 
        var tot = ca.length;
        if (tot<1) { return ''};
        //offenses aggregate
                var r = alasql("SELECT COUNT(c) As c, ot FROM ? GROUP BY ot ORDER BY c DESC, ot ASC",[ca]), o, y;
                if (!r) { return };
                var tx = '<div class="row pl-5 ml-5 pt-1 text-center"><h5 class="d-block w-100 text-center p-3">' + yt + '</h5><ul class="col list-group list-group-flush"><h6>' + formatNumber(tot) + ' offenses</h6>'
                for (var x = 0, ll = r.length; x < ll; x++) { 
                    o = r[x];
                    y = percentOnly(o.c, tot);

                    tx += '<li class="list-group-item p-0 border-0">' + y + '% (' + o.c + ') ' + o.ot + '</li>';
                };
            tx += '</ul>';

                //method aggregate
                r = alasql("SELECT COUNT(c) As c, m FROM ? GROUP BY m ORDER BY c DESC, m ASC",[ca]);
                tx += '<ul class="col list-group list-group-flush"><h6>methods</h6>'
                for (var x = 0, ll = r.length; x < ll; x++) { 
                    o = r[x];
                    y = percentOnly(o.c,tot);
                    tx += '<li class="list-group-item p-0 border-0">' + y + '% (' + o.c + ') ' + o.m + '</li>';
                };
                tx += '</ul>'; 
                //ward aggregate
                r = alasql("SELECT COUNT(c) As c, wd FROM ? GROUP BY wd ORDER BY c DESC, wd ASC",[ca]);
                tx += '<ul class="col list-group list-group-flush"><h6>wards</h6>'
                for (var x = 0, ll = r.length; x < ll; x++) { 
                    o = r[x];
                    y = percentOnly(o.c,tot);
                    tx += '<li class="list-group-item p-0 border-0">' + y + '% (' + o.c + ') w' + o.wd + '</li>';
                };
                tx += '</ul>';
                //demographics
                r = alasql("SELECT w FROM ? WHERE w IS NOT NULL GROUP BY w ORDER BY w ASC",[ca]);
                var st1 = new Set(), st2 = new Set(), total = 0, households = 0, children = 0, school_aged = 0, disabled = 0, teens = 0, seniors = 0, w;
                for (var x = 0, ll = r.length; x < ll; x++) { o = r[x]; st1.add(o.w); };
                r = alasql("SELECT * FROM props");
                for (var x = 0, ll = r.length; x < ll; x++) { 
                    o = r[x];
                    w = o.w;
                    if (st1.has(w)&&!st2.has(w)) { 
                        st2.add(w);
                        total = total +o.c;
                        households = households +o.h;
                        children = children +o.ch;
                        school_aged = school_aged +o.sa;
                        disabled = disabled +o.d;
                        teens = teens +o.t;
                        seniors = seniors +o.s;
                    };
                };
                tx += '<ul class="col list-group list-group-flush"><h6>customers</h6>';
                tx += '<li class="list-group-item p-0 border-0">' + formatNumber(total) + ' customers</li>';
                tx += '<li class="list-group-item p-0 border-0">' + formatNumber(households) + ' households</li>';
                if (children>0) { tx += '<li class="list-group-item p-0 border-0">' + getPercent(children,total) + ' children</li>'};
                if (school_aged>0) { tx += '<li class="list-group-item p-0 border-0">' + getPercent(school_aged,total) + ' school-aged</li>'};
                if (teens>0) { tx += '<li class="list-group-item p-0 border-0">' + getPercent(teens,total) + ' teens</li>'};
                if (seniors>0) { tx += '<li class="list-group-item p-0 border-0">' + getPercent(seniors,total) + ' seniors</li>'};
                if (disabled>0) { tx += '<li class="list-group-item p-0 border-0">' + getPercent(disabled,total) + ' disabled</li>'};
                tx += '</ul>';

                tx += '</div>';
                return tx; 
        }


    </script>
</asp:Content>
