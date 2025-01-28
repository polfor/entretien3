<template>
	<div class="data-table">
		<table>
			<thead>
				<tr>
					<th>Heure</th>
					<th>Prévision</th>
				</tr>
			</thead>
			<tbody>
				<tr v-for="row in data.records" :key="row.recordid">
					<td>{{ row.fields.bm_heure }}</td>
					<td>{{ row.fields.bm_prevision }}</td>
				</tr>
			</tbody>
		</table>
	</div>
</template>

<script setup>
	const { data } = useFetch(
		"https://opendata.bordeaux-metropole.fr/api/records/1.0/search/?dataset=ci_courb_a&rows=193",
		{
			method: "GET",
			headers: {},
		}
	);
</script>

<style>
	.data-table {
		width: 100%;
		border-collapse: collapse;
	}

	.data-table th,
	.data-table td {
		border: 1px solid #ddd;
		padding: 8px;
	}

	.data-table th {
		background-color: #f2f2f2;
		text-align: left;
	}

	.data-table tr:nth-child(even) {
		background-color: #f9f9f9;
	}

	.data-table tr:hover {
		background-color: #ddd;
	}
</style>
