---
layout: default
title: "Centro de práctica Zen"
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
    {% comment %} <div id="zendo" class="relative px-8 py-20 sm:py-32 sm:px-24 bg-gradient-to-b from-orange-950 to-amber-900">
      <div class="flex flex-col md:flex-row">
        <div class="w-full md:w-1/2">
          {% include index/zendo.html %}
        </div>
        <div class="w-full flex justify-center md:w-1/2">
          <img src="{{ '/assets/images/zen-circle.png' | relative_url }}" class="h-auto w-auto md:h-96 md:w-96" alt="Zen Circle Image">
        </div>
      </div>
    </div>
    <div id="ryunan" class="relative px-8 py-20 md:py-36 sm:px-12 bg-emerald-800">
      <div class="flex flex-col md:flex-row">
        <div class="w-full flex justify-center md:w-1/2">
          <img src="{{ '/assets/images/ryunan-bustamante-zenji.png' | relative_url }}" class="rounded-full h-48 w-48 md:h-72 md:w-72" alt="Ryunan Image">
        </div>
        <div class="w-full md:w-1/2">
          {% include index/ryunan.html %}
        </div>
      </div>
    </div> {% endcomment %}
    {% comment %} <div id="activities" class="relative pt-20 sm:pt-24 bg-gradient-to-r from-zinc-950 to-sky-900">
      <h2 class="text-3xl font-bold text-center text-zinc-200 pb-16 sm:text-4xl">Próximas Actividades</h2>
      <div class="flex flex-col-reverse px-8 sm:px-24 md:flex-row">
        <div class="w-full md:w-1/2">
          {% include index/activities.html %}
        </div>
        <div class="w-full flex justify-center md:w-1/2">
          <img src="{{ '/assets/images/buda-statue.png' | relative_url }}" class="w-72 md:w-auto" alt="Buda Image">
        </div>
      </div>
      <div class="bg-gradient-to-t from-zinc-800 to-transparent">
        <div class="italic text-zinc-200 py-5 px-8 sm:px-24 sm:text-2xl">
          <span>Información e Inscripciones:</span>
          <span>zenryunan@gmail.com / +569 6965 6617</span>
        </div>
      </div>
    </div> {% endcomment %}
    <div id="activities" class="relative">
      <img src="{{ '/assets/images/sesshin.jpeg' | relative_url }}" class="h-auto w-auto" alt="Sesshin Image">
    </div>
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
