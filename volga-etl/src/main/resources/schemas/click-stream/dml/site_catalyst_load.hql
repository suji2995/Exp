USE clickstream;

SET hive.exec.dynamic.partition.mode=nonstrict;
SET hive.exec.dynamic.partition=true;
SET hive.exec.compress.output=true;
SET hive.exec.max.dynamic.partitions=2000;
SET mapred.max.split.size=521000000;
SET mapred.output.compression.type=BLOCK;
SET io.sort.mb=256;
SET io.sort.factor=100;
SET mapred.job.reuse.jvm.num.tasks=-1;
SET hive.enforce.sorting=true;
SET mapreduce.reduce.input.limit = -1;
SET hive.merge.mapredfiles = true;
SET mapred.child.java.opts=-Xmx2048m;
SET mapred.child.ulimit=7316032;
SET mapred.job.reduce.memory.mb=4096;
SET mapred.job.map.memory.mb=4096;
SET mapred.task.maxvmem=9223372036854775807;

ADD JAR ${CSV_SERDE_JAR};

LOAD DATA INPATH ${INPUT_PATH} INTO TABLE site_catalyst_data_stg;

FROM site_catalyst_data_stg tmp
INSERT OVERWRITE TABLE site_catalyst_data PARTITION(dt)
 SELECT
      tmp.accept_language,
      tmp.browser,
      tmp.browser_height,
      tmp.browser_width,
      tmp.campaign,
      tmp.c_color,
      tmp.channel,
      tmp.click_action,
      tmp.click_action_type,
      tmp.click_context,
      tmp.click_context_type,
      tmp.click_sourceid,
      tmp.click_tag,
      tmp.code_ver,
      tmp.color,
      tmp.connection_type,
      tmp.cookies,
      tmp.country,
      tmp.ct_connect_type,
      tmp.currency,
      tmp.curr_factor,
      tmp.curr_rate,
      tmp.cust_hit_time_gmt,
      tmp.cust_visid,
      tmp.daily_visitor,
      tmp.date_time,
      tmp.domain,
      tmp.duplicated_from,
      tmp.duplicate_events,
      tmp.duplicate_purchase,
      tmp.evar1,
      tmp.evar2,
      tmp.evar3,
      tmp.evar4,
      tmp.evar5,
      tmp.evar6,
      tmp.evar7,
      tmp.evar8,
      tmp.evar9,
      tmp.evar10,
      tmp.evar11,
      tmp.evar12,
      tmp.evar13,
      tmp.evar14,
      tmp.evar15,
      tmp.evar16,
      tmp.evar17,
      tmp.evar18,
      tmp.evar19,
      tmp.evar20,
      tmp.evar21,
      tmp.evar22,
      tmp.evar23,
      tmp.evar24,
      tmp.evar25,
      tmp.evar26,
      tmp.evar27,
      tmp.evar28,
      tmp.evar29,
      tmp.evar30,
      tmp.evar31,
      tmp.evar32,
      tmp.evar33,
      tmp.evar34,
      tmp.evar35,
      tmp.evar36,
      tmp.evar37,
      tmp.evar38,
      tmp.evar39,
      tmp.evar40,
      tmp.evar41,
      tmp.evar42,
      tmp.evar43,
      tmp.evar44,
      tmp.evar45,
      tmp.evar46,
      tmp.evar47,
      tmp.evar48,
      tmp.evar49,
      tmp.evar50,
      tmp.evar51,
      tmp.evar52,
      tmp.evar53,
      tmp.evar54,
      tmp.evar55,
      tmp.evar56,
      tmp.evar57,
      tmp.evar58,
      tmp.evar59,
      tmp.evar60,
      tmp.evar61,
      tmp.evar62,
      tmp.evar63,
      tmp.evar64,
      tmp.evar65,
      tmp.evar66,
      tmp.evar67,
      tmp.evar68,
      tmp.evar69,
      tmp.evar70,
      tmp.evar71,
      tmp.evar72,
      tmp.evar73,
      tmp.evar74,
      tmp.evar75,
      tmp.event_list,
      tmp.exclude_hit,
      tmp.first_hit_pagename,
      tmp.first_hit_page_url,
      tmp.first_hit_referrer,
      tmp.first_hit_time_gmt,
      tmp.geo_city,
      tmp.geo_country,
      tmp.geo_dma,
      tmp.geo_region,
      tmp.geo_zip,
      tmp.hier1,
      tmp.hier2,
      tmp.hier3,
      tmp.hier4,
      tmp.hier5,
      tmp.hitid_high,
      tmp.hitid_low,
      tmp.hit_source,
      tmp.hit_time_gmt,
      tmp.homepage,
      tmp.hourly_visitor,
      tmp.ip,
      tmp.ip2,
      tmp.java_enabled,
      tmp.javascript,
      tmp.j_jscript,
      tmp.language,
      tmp.last_hit_time_gmt,
      tmp.last_purchase_num,
      tmp.last_purchase_time_gmt,
      tmp.mobile_id,
      tmp.monthly_visitor,
      tmp.mvvar1,
      tmp.mvvar2,
      tmp.mvvar3,
      tmp.namespace,
      tmp.new_visit,
      tmp.os,
      tmp.page_event,
      tmp.page_event_var1,
      tmp.page_event_var2,
      tmp.page_event_var3,
      tmp.pagename,
      tmp.page_type,
      tmp.page_url,
      tmp.paid_search,
      tmp.partner_plugins,
      tmp.persistent_cookie,
      tmp.plugins,
      tmp.post_browser_height,
      tmp.post_browser_width,
      tmp.post_campaign,
      tmp.post_channel,
      tmp.post_cookies,
      tmp.post_currency,
      tmp.post_cust_hit_time_gmt,
      tmp.post_cust_visid,
      tmp.post_evar1,
      tmp.post_evar2,
      tmp.post_evar3,
      tmp.post_evar4,
      tmp.post_evar5,
      tmp.post_evar6,
      tmp.post_evar7,
      tmp.post_evar8,
      tmp.post_evar9,
      tmp.post_evar10,
      tmp.post_evar11,
      tmp.post_evar12,
      tmp.post_evar13,
      tmp.post_evar14,
      tmp.post_evar15,
      tmp.post_evar16,
      tmp.post_evar17,
      tmp.post_evar18,
      tmp.post_evar19,
      tmp.post_evar20,
      tmp.post_evar21,
      tmp.post_evar22,
      tmp.post_evar23,
      tmp.post_evar24,
      tmp.post_evar25,
      tmp.post_evar26,
      tmp.post_evar27,
      tmp.post_evar28,
      tmp.post_evar29,
      tmp.post_evar30,
      tmp.post_evar31,
      tmp.post_evar32,
      tmp.post_evar33,
      tmp.post_evar34,
      tmp.post_evar35,
      tmp.post_evar36,
      tmp.post_evar37,
      tmp.post_evar38,
      tmp.post_evar39,
      tmp.post_evar40,
      tmp.post_evar41,
      tmp.post_evar42,
      tmp.post_evar43,
      tmp.post_evar44,
      tmp.post_evar45,
      tmp.post_evar46,
      tmp.post_evar47,
      tmp.post_evar48,
      tmp.post_evar49,
      tmp.post_evar50,
      tmp.post_evar51,
      tmp.post_evar52,
      tmp.post_evar53,
      tmp.post_evar54,
      tmp.post_evar55,
      tmp.post_evar56,
      tmp.post_evar57,
      tmp.post_evar58,
      tmp.post_evar59,
      tmp.post_evar60,
      tmp.post_evar61,
      tmp.post_evar62,
      tmp.post_evar63,
      tmp.post_evar64,
      tmp.post_evar65,
      tmp.post_evar66,
      tmp.post_evar67,
      tmp.post_evar68,
      tmp.post_evar69,
      tmp.post_evar70,
      tmp.post_evar71,
      tmp.post_evar72,
      tmp.post_evar73,
      tmp.post_evar74,
      tmp.post_evar75,
      tmp.post_event_list,
      tmp.post_hier1,
      tmp.post_hier2,
      tmp.post_hier3,
      tmp.post_hier4,
      tmp.post_hier5,
      tmp.post_java_enabled,
      tmp.post_keywords,
      tmp.post_mvvar1,
      tmp.post_mvvar2,
      tmp.post_mvvar3,
      tmp.post_page_event,
      tmp.post_page_event_var1,
      tmp.post_page_event_var2,
      tmp.post_page_event_var3,
      tmp.post_pagename,
      tmp.post_pagename_no_url,
      tmp.post_page_type,
      tmp.post_page_url,
      tmp.post_partner_plugins,
      tmp.post_persistent_cookie,
      tmp.post_product_list,
      tmp.post_prop1,
      tmp.post_prop2,
      tmp.post_prop3,
      tmp.post_prop4,
      tmp.post_prop5,
      tmp.post_prop6,
      tmp.post_prop7,
      tmp.post_prop8,
      tmp.post_prop9,
      tmp.post_prop10,
      tmp.post_prop11,
      tmp.post_prop12,
      tmp.post_prop13,
      tmp.post_prop14,
      tmp.post_prop15,
      tmp.post_prop16,
      tmp.post_prop17,
      tmp.post_prop18,
      tmp.post_prop19,
      tmp.post_prop20,
      tmp.post_prop21,
      tmp.post_prop22,
      tmp.post_prop23,
      tmp.post_prop24,
      tmp.post_prop25,
      tmp.post_prop26,
      tmp.post_prop27,
      tmp.post_prop28,
      tmp.post_prop29,
      tmp.post_prop30,
      tmp.post_prop31,
      tmp.post_prop32,
      tmp.post_prop33,
      tmp.post_prop34,
      tmp.post_prop35,
      tmp.post_prop36,
      tmp.post_prop37,
      tmp.post_prop38,
      tmp.post_prop39,
      tmp.post_prop40,
      tmp.post_prop41,
      tmp.post_prop42,
      tmp.post_prop43,
      tmp.post_prop44,
      tmp.post_prop45,
      tmp.post_prop46,
      tmp.post_prop47,
      tmp.post_prop48,
      tmp.post_prop49,
      tmp.post_prop50,
      tmp.post_prop51,
      tmp.post_prop52,
      tmp.post_prop53,
      tmp.post_prop54,
      tmp.post_prop55,
      tmp.post_prop56,
      tmp.post_prop57,
      tmp.post_prop58,
      tmp.post_prop59,
      tmp.post_prop60,
      tmp.post_prop61,
      tmp.post_prop62,
      tmp.post_prop63,
      tmp.post_prop64,
      tmp.post_prop65,
      tmp.post_prop66,
      tmp.post_prop67,
      tmp.post_prop68,
      tmp.post_prop69,
      tmp.post_prop70,
      tmp.post_prop71,
      tmp.post_prop72,
      tmp.post_prop73,
      tmp.post_prop74,
      tmp.post_prop75,
      tmp.post_purchaseid,
      tmp.post_referrer,
      tmp.post_search_engine,
      tmp.post_state,
      tmp.post_survey,
      tmp.post_tnt,
      tmp.post_transactionid,
      tmp.post_t_time_info,
      tmp.post_visid_high,
      tmp.post_visid_low,
      tmp.post_visid_type,
      tmp.post_zip,
      tmp.p_plugins,
      tmp.prev_page,
      tmp.product_list,
      tmp.product_merchandising,
      tmp.prop1,
      tmp.prop2,
      tmp.prop3,
      tmp.prop4,
      tmp.prop5,
      tmp.prop6,
      tmp.prop7,
      tmp.prop8,
      tmp.prop9,
      tmp.prop10,
      tmp.prop11,
      tmp.prop12,
      tmp.prop13,
      tmp.prop14,
      tmp.prop15,
      tmp.prop16,
      tmp.prop17,
      tmp.prop18,
      tmp.prop19,
      tmp.prop20,
      tmp.prop21,
      tmp.prop22,
      tmp.prop23,
      tmp.prop24,
      tmp.prop25,
      tmp.prop26,
      tmp.prop27,
      tmp.prop28,
      tmp.prop29,
      tmp.prop30,
      tmp.prop31,
      tmp.prop32,
      tmp.prop33,
      tmp.prop34,
      tmp.prop35,
      tmp.prop36,
      tmp.prop37,
      tmp.prop38,
      tmp.prop39,
      tmp.prop40,
      tmp.prop41,
      tmp.prop42,
      tmp.prop43,
      tmp.prop44,
      tmp.prop45,
      tmp.prop46,
      tmp.prop47,
      tmp.prop48,
      tmp.prop49,
      tmp.prop50,
      tmp.prop51,
      tmp.prop52,
      tmp.prop53,
      tmp.prop54,
      tmp.prop55,
      tmp.prop56,
      tmp.prop57,
      tmp.prop58,
      tmp.prop59,
      tmp.prop60,
      tmp.prop61,
      tmp.prop62,
      tmp.prop63,
      tmp.prop64,
      tmp.prop65,
      tmp.prop66,
      tmp.prop67,
      tmp.prop68,
      tmp.prop69,
      tmp.prop70,
      tmp.prop71,
      tmp.prop72,
      tmp.prop73,
      tmp.prop74,
      tmp.prop75,
      tmp.purchaseid,
      tmp.quarterly_visitor,
      tmp.ref_domain,
      tmp.referrer,
      tmp.ref_type,
      tmp.resolution,
      tmp.sampled_hit,
      tmp.search_engine,
      tmp.search_page_num,
      tmp.secondary_hit,
      tmp.service,
      tmp.sourceid,
      tmp.s_resolution,
      tmp.state,
      tmp.stats_server,
      tmp.tnt,
      tmp.tnt_post_vista,
      tmp.transactionid,
      tmp.truncated_hit,
      tmp.t_time_info,
      tmp.ua_color,
      tmp.ua_os,
      tmp.ua_pixels,
      tmp.user_agent,
      tmp.user_hash,
      tmp.userid,
      tmp.username,
      tmp.user_server,
      tmp.va_closer_detail,
      tmp.va_closer_id,
      tmp.va_finder_detail,
      tmp.va_finder_id,
      tmp.va_instance_event,
      tmp.va_new_engagement,
      tmp.visid_high,
      tmp.visid_low,
      tmp.visid_new,
      tmp.visid_STRING,
      tmp.visid_type,
      tmp.visit_keywords,
      tmp.visit_num,
      tmp.visit_page_num,
      tmp.visit_referrer,
      tmp.visit_search_engine,
      tmp.visit_start_pagename,
      tmp.visit_start_page_url,
      tmp.visit_start_time_gmt,
      tmp.weekly_visitor,
      tmp.yearly_visitor,
      tmp.zip,
      tmp.mobileaction,
      tmp.mobileappid,
      tmp.mobilecampaigncontent,
      tmp.mobilecampaignmedium,
      tmp.mobilecampaignname,
      tmp.mobilecampaignsource,
      tmp.mobilecampaignterm,
      tmp.mobiledayofweek,
      tmp.mobiledayssincefirstuse,
      tmp.mobiledayssincelastuse,
      tmp.mobiledevice,
      tmp.mobilehourofday,
      tmp.mobileinstalldate,
      tmp.mobilelaunchnumber,
      tmp.mobileltv,
      tmp.mobileosversion,
      tmp.mobileresolution,
      tmp.pointofinterest,
      tmp.pointofinterestdistance,
      tmp.post_mobileaction,
      tmp.post_mobileappid,
      tmp.post_mobilecampaigncontent,
      tmp.post_mobilecampaignmedium,
      tmp.post_mobilecampaignname,
      tmp.post_mobilecampaignsource,
      tmp.post_mobilecampaignterm,
      tmp.post_mobiledayofweek,
      tmp.post_mobiledayssincefirstuse,
      tmp.post_mobiledayssincelastuse,
      tmp.post_mobiledevice,
      tmp.post_mobilehourofday,
      tmp.post_mobileinstalldate,
      tmp.post_mobilelaunchnumber,
      tmp.post_mobileltv,
      tmp.post_mobileosversion,
      tmp.post_mobileresolution,
      tmp.post_pointofinterest,
      tmp.post_pointofinterestdistance,
      tmp.socialassettrackingcode,
      tmp.socialauthor,
      tmp.socialaveragesentiment,
      tmp.socialcontentprovider,
      tmp.sociallanguage,
      tmp.sociallatlong,
      tmp.sociallink,
      tmp.socialproperty,
      tmp.socialterm,
      tmp.socialtermslist,
      tmp.post_socialassettrackingcode,
      tmp.post_socialauthor,
      tmp.post_socialaveragesentiment,
      tmp.post_socialcontentprovider,
      tmp.post_sociallanguage,
      tmp.post_sociallatlong,
      tmp.post_sociallink,
      tmp.post_socialproperty,
      tmp.post_socialterm,
      tmp.post_socialtermslist,
      tmp.video,
      tmp.videoad,
      tmp.videoadinpod,
      tmp.videoadplayername,
      tmp.videoadpod,
      tmp.videochannel,
      tmp.videocontenttype,
      tmp.videopath,
      tmp.videoplayername,
      tmp.videosegment,
      tmp.post_video,
      tmp.post_videoad,
      tmp.post_videoadinpod,
      tmp.post_videoadplayername,
      tmp.post_videoadpod,
      tmp.post_videochannel,
      tmp.post_videocontenttype,
      tmp.post_videopath,
      tmp.post_videoplayername,
      tmp.post_videosegment,
      CONCAT(year(date_time),'-',
            CASE WHEN month(date_time) < 10 THEN concat('0',month(date_time)) ELSE trim(month(date_time)) END,'-',
            CASE WHEN day(date_time) < 10 THEN concat('0',day(date_time)) ELSE trim(day(date_time)) END) as m_date
DISTRIBUTE BY m_date;
