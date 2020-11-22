<template>
  <div class="row">
    <h1>応援参加可能なグループ</h1>
    <div class="row">
      <ul>
        <li v-for="(group, index) in groups" :key="index">
          <p>{{ group.id }}</p>
          <p>{{ group.group_name }}</p>
          <p>{{ group.owner_id }}</p>
          <p>{{ group.goal }}</p>
          <p>{{ group.todo }}</p>
          <p>{{ group.frequency }}</p>
          <p>{{ group.start_goal_day }}</p>
          <p>{{ group.genre }}</p>
          <p>{{ group.limit_members }}</p>
          <p>{{ group.created_at }}</p>
          <p>{{ group.updated_at }}</p>
          <button v-on:click="deleteTask(group.id, index)">削除</button>
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
  import axios from 'axios';

  export default {
    data: function () {
      return {
        groups: []
      }
    },
    mounted: function () {
      this.fetchGroups();
    },
    methods: {
      fetchGroups: function () {
        axios.get('/api/groups').then((response) => {
          for(let i = 0; i < response.data.groups.length; i++) {
            this.groups.push(response.data.groups[i]);
          }
        }, (error) => {
          console.log(error, response);
        });
      },
      createGroup: function () {
        if(this.newGroups == '') return;

        axios.post('/api/groups', { group: { name: this.newGroups } }).then((response) => {
          this.groups.unshift(response.data);
          this.newGroups = '';
        }, (error) => {
          console.log(error, response);
        });
      },
      deleteGroup: function (group_id, index) {
        axios.delete('/api/groups/' + group_id).then((response) => {
          this.groups.splice(index, 1);
        }, (error) => {
          console.log(error, response);
        });
      },
      update: function (group_id) {
        axios.put('/api/groups/' + group_id).then((response) => {
        }, (error) => {
          console.log(error);
        });
      }
    }
  }
</script>