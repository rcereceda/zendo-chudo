---
layout: default
title: "Centro de práctica Zen"
description: "Centro de práctica Zen en Santiago de Chile. Practicamos Zazen presencial y online. Ubicados en La Reina, Metro Plaza Egaña."
keywords: "zen, zazen, meditación, budismo, santiago, chile, la reina, plaza egaña, práctica zen, centro zen"
---

<div class="sm:px-8 mt-9">
  <div class="mx-auto w-full max-w-7xl lg:px-8">
    <div class="relative px-4 bg-top md:bg-bottom pt-40 pb-80 sm:pt-96 sm:pb-72 sm:px-8 lg:px-12" style="background-image: url({{ '/assets/images/bg-main.jpg' | relative_url }});">
      <div class="flex sm:pb-8">
        <div class="flex-grow">
        </div>
        <div class="w-full md:w-3/4 lg:w-1/2">
          <div class="mx-auto space-y-6 md:text-center">
            <h1 class="text-4xl font-bold tracking-tight text-zinc-300 sm:text-6xl">
                {{ site.title }}
            </h1>
            <p class="text-lg text-zinc-400 font-medium sm:text-xl">
              {{ page.title }}
            </p>
          </div>
        </div>
      </div>
    </div>
    {% assign activities = site.data.notion_activities | sort: "order" %}
    {% if activities and activities.size > 0 %}
    <div id="activities" class="relative px-8 py-16 sm:py-24 sm:px-24 bg-gradient-to-b from-zinc-950 to-sky-900">
      <div class="flex">
        <div class="w-full">
          {% include index/activities.html %}
        </div>
      </div>
    </div>
    {% endif %}
    <div id="schedule" class="relative px-8 py-16 sm:py-24 sm:px-24 bg-zinc-800">
      <div class="flex">
        <div class="w-full">
          {% include index/schedule.html %}
        </div>
      </div>
    </div>
    <div id="location" class="relative">
      <div class="bg-gradient-to-b from-zinc-800 to-zinc-200 h-8"></div>
      <div class="flex px-4 py-8 sm:px-8 sm:py-10 lg:px-12 bg-zinc-200">
        <div class="w-full">
          {% include index/location.html %}
        </div>
      </div>
    </div>
  </div>
</div>
