---
layout: default
title: "Centro de práctica Zen"
---

<div class="sm:px-8 mt-9">
  <div class="mx-auto w-full max-w-7xl lg:px-8">
    <div class="relative px-4 pt-60 pb-72 sm:px-8 sm:pt-80 sm:pb-96 lg:px-12" style="background-image: url({{ '/assets/images/bg-home.jpeg' | relative_url }});">
      <div class="flex sm:pb-8">
        <div class="flex-grow">
        </div>
        <div class="w-full sm:w-1/2">
          <div class="mx-auto md:text-center">
          <h1 class="text-4xl font-bold tracking-tight text-zinc-200 sm:text-6xl">
              {{ site.title }}
          </h1>
          <p class="text-lg mt-6 text-base text-zinc-300 sm:text-xl">
            {{ page.title }}
          </p>
        </div>
        </div>
      </div>
    </div>
    <div id="zendo" class="relative px-8 py-20 sm:py-32 sm:px-16 bg-gradient-to-b from-orange-950 to-amber-900">
      <div class="flex">
        <div class="w-full md:w-1/2">
          {% include index/zendo.html %}
        </div>
      </div>
    </div>
    <div id="ryunan" class="relative px-8 py-20 md:py-36 lg:px-12 bg-emerald-800">
      <div class="flex flex-col md:flex-row">
        <div class="w-full flex justify-center md:w-1/2">
          <img src="{{ '/assets/images/ryunan-bustamante-zenji.png' | relative_url }}" class="rounded-full h-48 w-48 md:h-72 md:w-72" alt="Circle Image">
        </div>
        <div class="w-full md:w-1/2">
          {% include index/ryunan.html %}
        </div>
      </div>
    </div>
    <div id="location" class="relative px-4 py-12 sm:py-16 sm:px-8 lg:px-12 bg-zinc-200">
      <div class="flex">
        <div class="w-full">
          {% include index/location.html %}
        </div>
      </div>
    </div>
  </div>
</div>
